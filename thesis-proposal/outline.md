# Thesis Proposal Outline

This is the outline of the thesis proposal.
I do not include auxiliary sections such as the title page, abstract, and references page.

One page of text has around seven hundred words.
I expect to include some graphics in this document, but not so many that they break the one page ~= seven hundred words estimate.
One sentence is around twenty words.
This means that, for example, a single page should have around thirty-five sentences.
This makes it easy to estimate how long each section should be.

Thesis proposal total length: fifteen pages

- Introduction (one page)
- Background (three pages)
	- What is commonsense reasoning? Why is important? (one-and-a-half pages)
		- What it is: (one page)
			- Two major avenues through which it can be achieved are commonsense knowledge graphs and commonsense knowledge models (Kim et al, 2022)
			- Static knowledge graphs (e.g. ATOMIC (Sap et al, 2019)) represent entities as nodes and relations as edges (Kim et al, 2022)
			- Commonsense knowledge models (e.g. COMET (Bosselut et al, 2019)) generate implicit commonsense inferences in multiple dimensions based on the knowledge graph on which they are trained (Kim et al, 2022)
		- Why it's important: (half page)
	- What are the downstream tasks which use commonsense reasoning? Why are they important? (one-and-a-half pages)
		- What they are: (one page)
		- Why they're important: (half page)
- Finding better ways to do commonsense reasoning (five pages)
	- Aims (half page)
	- Motivation (half page)
	- Prior work (two-and-a-half pages)
	- Proposition to find better ways to do this (half page)
	- Methods (one page)
- Finding better ways to apply commonsense reasoning to downstream tasks (five pages)
	- Aims (half page)
	- Motivation (half page)
		- Improvements to commonsense reasoning can improve models which tackle downstream tasks, including sequence classification, question answering, dialogue modelling, and dialogue summarisation (Richardson and Heck, 2023).
	- Prior work (three pages)
		- Dialogue summarisation
			- What is it?
				- Generating a summary of a conversation while preserving its context (Kim et al, 2022)
				- Formally, the goal is to learn a mapping function $\mathbb{M}: \mathcal{D} \to \mathcal{Y}$ where $\mathcal{D} = \{u_1, u_2, \ldots, u_n\}$ is a dialogue with $n$ utterances and $\mathcal{Y} = \{y_1, y_2, \ldots, y_m\}$ is a summary of the dialogue consisting of $m$ sentences (Kim et al, 2022)
				- Abstractive summarisation, creating a summary from scratch, is more difficult than extractive summarisation, creating one using snippets of the original text (Kim et al, 2022)
				- Abstractive dialogue summarisation is the task of generating a summary of a conversation (Kim et al, 2022)
				- Dialogue summarisation is more difficult than document summarisation for two reasons. First, people do not state obvious matters, assuming that the interlocutor implicitly understands them (Grice, 1975). Second, conversations have an interactive flow of information between the speakers (Li et al, 2021)
				- How is performance on this task measured?
			- Examples of using commonsense reasoning to improve performance on this task:
				- SICK and SICK++ (Kim et al, 2022)
					- SICK means Summarizing with Injected Commonsense Knowledge (Kim et al, 2022), and SICK++ is an extension (Kim et al, 2022).
					- They extend the task of dialogue summarisation with two modifications:
						- First, they generate and filter to arrive at a set of commonsense knowledge $\mathcal{C} = \{c_1, c_2, \ldots, c_n\}$ based on $\mathcal{D}$ (TODO: explain how this set is found using sections 3.2 and 3.3 of (Kim et al, 2022)). Then, they use a slightly-modified mapping function $\mathbb{M}: \mathcal{X} \to \mathcal{Y}$ where $\mathcal{X}$ is a cross concatenation of $\mathcal{D}$ and $\mathcal{C}$. (TODO: further explain this cross concatenation using section 3.3 of (Kim et al, 2022)) (Kim et al, 2022)
						- Second, they add an auxiliary task commonsense supervision $\mathbb{M}^*: \mathcal{X} \to \mathcal{Z}$ where the target commonsense $\mathcal{Z}$ is found based on $\mathcal{Y}$ (TODO: use section 3.4 of (Kim et al, 2022) to explain how the target commonsense is found) (Kim et al, 2022).
					- SICK
						- How it uses commonsense reasoning:
							- There are 23 possible relation types (e.g. xIntent, xWant, xNeed, etc.)
							- For each utterance $u_i$ in the dialogue $\mathcal{D}$, they have a commonsense inference $c_i$ from the sequence of corresponding commonsense inferences $\mathcal{C}$, found through the process described in the auxiliary information section
							- They cross concatenate, appending each $c_i$ after its corresponding $u_i$. Formally, this is expressed as $\mathcal{X} = \mathcal{D} \bigoplus \mathcal{C} = \cdots || u_i || <\text{I}> c_i </\text{I}> || \cdots$ where $<\text{I}>$ and $</\text{I}>$ are special tokens which demarcate the commonsense inferences.
							- This is then fed into a standard transformer-based encoder-decoder architecture. Through the cross concatenation, the encoder is able to use both the utterances, $\mathcal{D}$, and the commonsense inferences, $\mathcal{C}$. It is trained with a standard negative-log-likelihood loss.
						- Auxiliary information:
							- How it generates the commonsense inferences:
								- It uses a two-step procedure to generate commonsense inferences from a given utterance and, optionally, the previous utterance
								- They only consider a certain subset of relation types, e.g. xIntent and xWant, rather than all the relationship types. In (Kim et al, 2022), they consider $k=5$ relation types, which are selected for an utterance.
								- Because (1) adding too much information may confuse the model and (2) transformers have an inherently limited maximum input sequence length, they include a second step, filtering, which finds the best commonsense inference from those generated.
								- The first step, generating the commonsense inferences:
									- They use a commonsense knowledge model such as COMET (Hwang et al, 2021) or PARA-COMET (Gabriel et al, 2021)
									- COMET accepts the given utterance desired relation type (e.g., xIntent) as inputs to generate a commonsense inference. PARA-COMET accepts the previous utterance as a third input and conditions the output inference on that previous utterance.
									- For each relation type, they generate several candidate commonsense inferences
								- The second step, filtering the commonsense inferences:
									- For each relation type $r \in R$ and inference index $j \in \left\{ 1, \ldots, k \right\}$, they find the commonsense inference $c_j^r$ most semantically relevant to the utterance. Formally, they find for every utterance $u_i$ a $c_i$ given by $c_i = \argmax_{c_j^r} \text{similarity-score}(u_i, c_j^r)$.
									- To find the semantic relevance of a commonsense inference to an utterance, they use SBERT (Reimers and Gurevych, 2019)
									- They compile the selected commonsense inferences into $\mathcal{C} = \left\{c_i\right\}_{i=1}^(n}$.
					- SICK++
						- Here, they include an auxiliary task titled commonsense supervision.
						- To encourage the model to consider commonsense inferences, they include a second decoder $\mathbb{D_{\text{cs}}}$ which generates commonsense inferences, the target commonsense inferences coming from an commonsense knowledge model such as COMET and PARA-COMET.
						- $\mathbb{D_{\text{cs}}}$ is paired with a loss analogous to that of the dialogue summarisation decoder $\mathbb{D_{\text{ds}}}$ from SICK
						- The two decoders are then trained together in a multi-task learning setting.
				- (Feng et al, 2021) and (Zhou et al, 2022) use ConceptNet (Speer et al, 2017) to fill in missing cues between dialogue (Kim et al, 2022)
					- TODO: add these papers' content
			- Proposition to find better ways to do this
				- Using commonsense as additional context in dialogue summarisation is an under-explored direction (Kim et al, 2022)
		- Sequence classification
		- Question answering
		- Dialogue modelling
	- Methods (one page)
- Timeline (half page)
- Conclusion (half page)
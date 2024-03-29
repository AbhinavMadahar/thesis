# Thesis Proposal Outline

This is the outline of the thesis proposal.
I do not include auxiliary sections such as the title page, abstract, and references page.

One page of text has around seven hundred words.
I expect to include some graphics in this document, but not so many that they break the one page ~= seven hundred words estimate.
One sentence is around twenty words.
This means that, roughly speaking, a single page should have around thirty-five sentences.
This makes it easy to estimate how long each section should be.

- Right now, there is no universally-agreed-upon scheme for codifying commonsense knowledge (Richardson and Heck, 2023).
- Language models implicitly have some amount of commonsense reasoning because commonsense knowledge is present in the data (Richardson and Heck, 2023).
- Current state-of-the-art commonsense techniques tend to use a custom dataset with annotations designed for learning commonsense (Richardson and Heck, 2023).

Abstract: (150 words; 7 sentences)

- Artificial consciousness and artificial general (super)intelligence might be achievable in the near future
- To advance research in this direction, I propose a thesis which focuses on commonsense reasoning, a potential step towards achieving these goals
- The thesis is divided into two halves:
  - The first focuses on ways to better achieve commonsense reasoning itself
  - The second finds better ways to apply commonsense reasoning to downstream tasks

Thesis proposal total length: thirteen pages

- ~~Introduction (two pages; fifty-five sentences)~~
  - ~~Raise the sense that it is important that the research community not shy away from revolutionary work in favour of merely evolutionary work (five sentences)~~
  - ~~Distinguish between research on the trunk and research on the branches (ten sentences)~~
    - ~~Artificial intelligence systems in present-day research tend to understand some concept and then do something with this understanding~~
      - ~~For example, in machine translation via an attentionless encoder-decoder architecture, the encoder comes to understand the input text by putting it in the latent space and the decoder uses this latent-space-representation-based understanding to write text in the destination language~~
    - ~~What is research on the trunk?~~
      - ~~It is research which advances how an artificial intelligence understands concepts~~
      - ~~In the machine translation example given, improving the encoder's ability to understand the input text would be movement forwards in the trunk direction~~
    - ~~What is research on the branches?~~
      - ~~It is research which advances how an artificial intelligence uses its understanding to do something useful~~
      - ~~In the machine translation example given, improving the decoder's ability to write text in the destination language would be movement forwards in the branch direction~~
    - ~~Note that research can sometimes have both aspects~~
      - ~~AlexNet (Krizhevsky et al, 2012) had~~
        - ~~The trunk property of ushering in the modern era of deep networks~~
        - ~~The branch property of applying deep networks to image classification~~
  - ~~Situate my thesis and graduate school application and matriculation within this context as a step along the trunk, not the branches (five sentences)~~
    - ~~My research, during graduate school and beyond, will advance work in both directions, trunk and branch.~~
    - ~~My thesis in particular moves the field forward in both directions, the first part advancing in the trunk and the second part advancing along the branches.~~
    - ~~As such, accepting me into graduate school is a fantastic way to advance research in important ways, advancing research in both the trunk of improving 'fundamental' AI and in the branch of applying this 'fundamental' AI to specific tasks.~~
    - ~~(Plz accept me plzzzz 🙏🙏🙏.)~~
  - ~~Based on this, define and raise the importance of pursuing the major endgoals of artificial consciousness and AG(S)I (fifteen sentences)~~
    - ~~Define artificial conciousness~~
      - ~~An artificial conciousness is a machine which is aware of its own existence~~
      - ~~An example from literature is the AI named 'Samantha' from Her (2013)~~
    - ~~Define AGI~~
      - ~~An artificial general intelligence is a machine which can perform intellectual labour~~
  - ~~A recent survey of consciousness scientists (Frankcen JC et al, 2022) found that, when asked whether an AI system could be conscious, (figures rounded to the nearest integral percentage)~~
    - ~~18% said definitely yes~~
    - ~~49% said probably yes~~
    - ~~21% were neutral~~
    - ~~10% said probably not~~
    - ~~2% said definitely not~~
  - ~~As we can see, there is a promising chance that humanity in the near future might create a consciousness, our own Adam~~
  - ~~Briefly explain what commonsense reasoning is, but don't go into too much detail (the background section covers this more deeply) (ten sentences)~~
  - ~~Explain why commonsense reasoning might be a step towards AGI and artificial conciousness (ten sentences)~~
    - ~~State-of-the-art large language models struggle with tasks which require high-level reasoning, including cases where humans find the necessary reasoning trivial (Richardson and Heck, 2023).~~
  - ~~Note that commonsense reasoning is not necessarily in NLP, but recent work in commonsense reasoning aligns with NLP more generally (two sentences)~~
  - ~~Note responding to Ali Rahimi's 2017 NeurIPS talk and how it interplays with this thesis (ten sentences)~~
    - ~~Rahimi argued that we should move away from merely creating new techniques which perform more well and towards developing a deeper understanding of how and why certain techniques work~~
    - ~~The goal is my research is ultimately to discover a way to create an artificial conciousness, ideally one which can be constructed in the real world~~
    - ~~I am interested in building a deeper understanding of how and why certain techniques work, but that goal is subserviant to my main goal~~
    - ~~This is not necessarily the best goal, and other computer scientists might differ from me on this point, but it forms the structure of my own research~~
- ~~Background (one page; fourty-two sentences)~~
  - ~~What is consciousness? (ten sentences)~~
    - ~~The question of what consciousness is is complex and difficult to answer~~
    - ~~The short answer is that consciousness is when a system is aware that it exists and is separate from the rest of the world~~
    - ~~The term 'sentience' is often used slightly differently from the term 'conciousness'~~
      - ~~From (Butlin et al, 2023):~~
        - ~~The term 'sentience' can sometimes mean:~~
          - ~~Able to have senses (e.g. vision or audition)~~
            - ~~However, being conscious is not the same as sentience~~
            - ~~A system can sense its body and environment without being conscious of its existence~~
          - ~~Able to have emotional states or sensations such as pain and pleasure~~
            - ~~However, a system can be conscious while only having 'neutral' experiences~~
  - ~~More precisely, what is commonsense reasoning? Why is important? (one page; twenty sentences)~~
    - ~~What it is: (half page; fifteen sentences)~~
      - ~~Specific definition (five sentences):~~
        - ~~TODO: fill~~
      - Broad overview of different techniques and avenues (five sentences):
        - ~~Two example categories through which it can be achieved are commonsense knowledge graphs and commonsense knowledge models (Kim et al, 2022)~~
          - ~~Static commonsense knowledge graphs (e.g. ATOMIC (Sap et al, 2019)) represent entities as nodes and relations as edges (Kim et al, 2022)~~
          - ~~Commonsense knowledge models (e.g. COMET (Bosselut et al, 2019)) generate implicit commonsense inferences in multiple dimensions based on the knowledge graph on which they are trained (Kim et al, 2022)~~
        - ~~My thesis will focus on a major direction of research which has garnered attention recently: neural knowledge bases~~
          - ~~Briefly explain what this is~~
      - ~~Discussion on implicit commonsense reasoning found in large language models (five sentences):~~
        - ~~TODO: fill~~
    - ~~Why it's important: (five sentences)~~
  - ~~What are the downstream tasks which use commonsense reasoning? Why are they important? (quarter page; seven sentences)~~
    - ~~Quick summary of what each task is (seven tasks; one sentence per task):~~
- Finding better ways to do commonsense reasoning (three pages; one-hundred sentences)
  - ~~Explain that this is an example of trunk work (five sentences)~~
  - Background (thirty sentences)
    - Define and describe abductive reasoning (fifteen sentences)
      - TODO: fill from (Qin et al, 2020)
      - Describe abductive NLI
        - TODO: fill from (Bhagavatula et al, 2019)
      - Describe abductive NLG
        - TODO: fill from (Bhagavatula et al, 2019)
      - Prior work
        - TODO: fill from (Qin et al, 2020)
    - Define and describe counterfactual reasoning (fifteen sentences)
      - TODO: fill from (Qin et al, 2020)
  - Methods (one page) (fifteen sentences)
    - Datasets
      - NumerSense
        - TODO: fill from (Lin et al, 2020)
      - TIMEDIAL
        - TODO: fill from (Qin L et al, 2021)
      - COM2SENSE
        - TODO: fill from (Singh S et al, 2021)
      - SocialIQA
      - PIQA
      - ARC
      - QASC
      - HellaSWAG
    - Evaluation metrics
      - SocialIQA (SIQA)
        - TODO: fill from (Sap et al, 2019b)
      - CommonsenseQA (CSQA)
        - TODO: fill from (Talmor et al, 2018)
      - Abductive NLI (a-NLI)
        - TODO: fill from (Bhagavatula et al, 2020)
      - PhysicalIQA (PIQA)
        - TODO: fill from (Bisk et al, 2020)
      - WinoGrande (WG)
        - TODO: fill from (Sakaguchi et al, 2020)
      - COM2SENSE
        - TODO: fill from (Singh S et al, 2021)
  - Natural-language-based commonsense reasoning (fifty sentences)
    - Using pre-trained language models as neural knowledge bases (fourty-five sentences)
      - Why it might be wise to use natural language instead of logical formalisms to capture commonsense reasoning (fifteen sentences)
        - Why is research in NLE important? (five sentences)
          - (Choi, 2022) argues that natural language is a better medium through which an AI can understand the world because it is more expressive than logical formalisms, such as the three-tuples and knowledge graphs widespread in present-day commonsense reasoning research.
            - TODO: fill
        - Prior work on using NLE to improve commonsense reasoning (ten sentences)
          - (Bosselut et al, 2019)
            - TODO: fill
          - (Gabriel et al, 2021)
            - TODO: fill
      - Prior work in this direction (twenty sentences)
        - ~~TODO: fill from (Lin et al, 2020)~~
        - TODO: fill from (Shwartz V et al, 2022)
        - TODO: fill from (West P et al, 2021)
        - TODO: fill from (Qin L et al, 2021)
        - TODO: fill from (Bosselut A et al, 2021)
        - ~~TODO: fill from (Bian N et al, 2023)~~
        - ~~TODO: fill from (Liu J et al, 2021)~~
      - Potentially limitations of this direction (five sentences)
        - TODO: fill from (Branco R et al, 2021)
      - Statement that I will pursue this direction because it is the most promising (five sentences)
        - Clarify that, because commonsense reasoning as a field is very young, only really gaining possibility a few years ago (Choi Y, 2022), it is very much conceivable that over the course of doing my thesis, new avenues will be opened, so this section is subject to change
    - Improving commonsense reasoning systems' ability to generalise (five sentences)
      - Through improving transfer learning:
        - TODO: fill from (Kim YJ et al, 2022)
  - Retrieval-based commonsense reasoning (five sentences)
    - TODO: fill from (Wang H et al, 2021)
- Finding better ways to apply commonsense reasoning to downstream tasks (five pages; two-hundred five sentences)
  - ~~Explain that this is an example of branch work (five sentences)~~
  - Methods (ten sentences)
    - Datasets
      - CICERO (Ghosal D et al, 2022)
        - TODO: fill
    - Evaluation metrics
      - GRADE (Huang et al, 2020)
        - TODO: fill
      - (Zhou et al, 2021)
        - TODO: fill
      - Rainbow (Lourie N et al, 2021)
        - TODO: fill
      - Cost equivalent curve (Lourie N et al, 2021)
        - TODO: fill
      - αNLI (Bhagavatula et al, 2019)
        - TODO: fill
      - CosmosQA (Huang et al, 2019)
        - TODO: fill
      - HellaSWAG (Zellers et al, 2019)
        - TODO: fill
      - PIQA (Bisk  et  al, 2020)
        - TODO: fill
      - SocialIQA (Sap et al, 2019b)
        - TODO: fill
      - WinoGrande (Sakaguchi et al, 2021)
        - TODO: fill
      - CycIC
        - TODO: fill (I don't have the source paper, so find it lmao)
      - CommonsenseQA 1.0 (Talmor et al, 2018)
        - TODO: fill
  - Techniques which apply to multiple tasks (thirty sentences)
    - Knowledge graph grounding (KGG)
      - What is KGG?
        - TODO: fill
      - Prior work on using commonsense reasoning via KGG to improve performance on this task
        - (Young et al, 2018)
          - TODO: fill
        - (Ma et al, 2021)
          - TODO: fill
        - (Zhong, Wang, and Miao, 2019)
          - TODO: fill
        - (Moon et al, 2019)
          - TODO: fill
        - (Zhang, Li, and Zhao, 2021)
          - TODO: fill
        - (Tu et al, 2022)
          - TODO: fill
        - (Xie, Sun, and Ji, 2022)
          - TODO: fill
        - (Feng, Feng, and Qin, 2021a)
          - TODO: fill
        - (Zhou et al, 2018)
          - TODO: fill
        - (Wu et al, 2020)
          - TODO: fill
        - (Varshney, Prabhakar, and Ekbal, 2022)
          - TODO: fill
        - (Gupta, Jhamtani, and Bigham, 2022)
          - TODO: fill
      - Proposition to find better ways to use KGG to improve performance
    - UNICORN
      - TODO: fill from (Lourie N et al, 2021)
  - Downstream tasks (one-hundred eighty sentences)
    - Dialogue generation (one page) (thirty sentences)
      - What is it?
        - TODO: fill from (Varshney D et al, 2022)
      - Methods
      - Motivation
      - Prior work on using commonsense reasoning to improve performance on this task
        - (Varshney D et al, 2022)
          - TODO: fill
        - (Xu F et al, 2022)
          - TODO: fill
      - Proposition to find better ways to do this
    - Dialogue summarisation (one page) (thirty sentences)
      - What is it?
        - Generating a summary of a conversation while preserving its context (Kim et al, 2022) and retaining factual consistency (Richardson and Heck, 2023).
        - Formally, the goal is to learn a mapping function $\mathbb{M}: \mathcal{D} \to \mathcal{Y}$ where $\mathcal{D} = \{u_1, u_2, \ldots, u_n\}$ is a dialogue with $n$ utterances and $\mathcal{Y} = \{y_1, y_2, \ldots, y_m\}$ is a summary of the dialogue consisting of $m$ sentences (Kim et al, 2022)
        - Abstractive summarisation, creating a summary from scratch, is more difficult than extractive summarisation, creating one using snippets of the original text (Kim et al, 2022)
        - Abstractive dialogue summarisation is the task of generating a summary of a conversation (Kim et al, 2022)
        - Dialogue summarisation is more difficult than document summarisation for two reasons. First, people do not state obvious matters, assuming that the interlocutor implicitly understands them (Grice, 1975). Second, conversations have an interactive flow of information between the speakers (Li et al, 2021)
      - Methods
        - Datasets
          - ICSI Meetings Corpus (Janin et al, 2003)
            - TODO: fill
          - AMI Meeting Corpus (McCowan et al, 2005)
            - TODO: fill
          - SAMsum (Gliwa et al, 2019)
            - TODO: fill
        - Evaluation metrics
      - Motivation
        - Dialogue summarisation is useful for meetings, where virtual assistants can summarise a meeting's key points and action items (Richardson and Heck, 2023). An early work in this direction is (Tur et al, 2010). Finding better ways to summarise dialogue would make it easier for businesses to find key take-aways from their meetings.
          - TODO: add a bit more from (Tur et al, 2010).
      - Prior work on using commonsense reasoning to improve performance on this task
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
                  - They compile the selected commonsense inferences into $\mathcal{C} = \left\{c_i\right\}_{i=1}^{n}$.
          - SICK++
            - Here, they include an auxiliary task titled commonsense supervision.
            - To encourage the model to consider commonsense inferences, they include a second decoder $\mathbb{D_{\text{cs}}}$ which generates commonsense inferences, the target commonsense inferences coming from an commonsense knowledge model such as COMET and PARA-COMET.
            - $\mathbb{D_{\text{cs}}}$ is paired with a loss analogous to that of the dialogue summarisation decoder $\mathbb{D_{\text{ds}}}$ from SICK
            - The two decoders are then trained together in a multi-task learning setting.
        - (Feng et al, 2021) and (Zhou et al, 2022) use ConceptNet (Speer et al, 2017) to fill in missing cues between dialogue (Kim et al, 2022)
          - TODO: add these papers' content
      - Proposition to find better ways to do this
        - Using commonsense as additional context in dialogue summarisation is an under-explored direction (Kim et al, 2022)
    - Sequence classification (one page; thirty sentences)
      - What is it?
        - The problem of identifying some attribute of the dialogue, e.g.
          - what is the intent of the conversation?
          - what is the emotional state of the other speaker?
          - what is the topic of the conversation?
      - Subproblems include:
        - Slot filling
          - What is this problem?
          - Methods
            - Datasets
            - Evaluation metrics
          - Motivation
          - Prior work on using commonsense reasoning to improve performance on this task
          - Proposition to find better ways to do this
        - Domain classification
          - What is this problem?
          - Methods
            - Datasets
            - Evaluation metrics
          - Motivation
          - Prior work on using commonsense reasoning to improve performance on this task
          - Proposition to find better ways to do this
        - Intent detection
          - What is this problem?
          - Methods
            - Datasets
            - Evaluation metrics
          - Motivation
          - Prior work on using commonsense reasoning to improve performance on this task
          - Proposition to find better ways to do this
        - Emotion detection (AKA 'emotion classification')
          - TODO: fill from (Yi et al, 2022)
          - What is this problem?
          - Methods
            - Datasets
            - Evaluation metrics
          - Motivation
          - Prior work on using commonsense reasoning to improve performance on this task
            - (Ghosal et al, 2020)
              - TODO: fill
            - (Li et al, 2021)
              - TODO: fill
            - (Tu G et al, 2022)
              - TODO: fill
          - Proposition to find better ways to do this
        - Causal emotion entailment
          - What is this problem?
          - Methods
          - Motivation
          - Prior work on using commonsense reasoning to improve performance on this task
            - (Li et al, 2022)
              - TODO: fill
        - Sentence topic prediction
          - What is this problem?
          - Methods
            - Datasets
            - Evaluation metrics
          - Motivation
          - Prior work on using commonsense reasoning to improve performance on this task
          - Proposition to find better ways to do this
        - Sequential dialogue context modelling
          - What is this problem?
          - Methods
            - Datasets
            - Evaluation metrics
          - Motivation
          - Prior work on using commonsense reasoning to improve performance on this task
          - Proposition to find better ways to do this
    - Presumption detection
      - What is this problem?
        - The problem of identifying the unstated presumptions of the speaker that allow the requested action to achieve the desired goal from the given state (perhaps elaborated by making the implicit pre- sumptions explicit) (Arabshahi et al, 2021)
        - Example: in the command 'If it snows at night then wake me up early because I don’t want to be late for work' the speaker relies on commonsense reasoning of the listener to infer the implicit pre- sumption that they wish to be woken only if it snows enough to cause traffic slowdowns (Arabshahi et al, 2021)
      - Methods
      - Prior work on using commonsense reasoning to improve performance on this task
        - (Arabshahi et al, 2021)
          - TODO: fill
      - Proposition to find better ways to do this
    - Question answering (one page; thirty sentences)
      - What is it?
      - Motivation
      - Methods
        - Evaluation metrics
          - Evaluation metrics of the come in several forms: true/false, short-answer multi-choice QA, and long-answer multi-choice QA (Richardson and Heck, 2023)
          - True/false
            - CommonsenseQA 2.0 (Talmor et al, 2022)
              - TODO: fill
            - Com2Sense (Singh et al, 2021)
              - TODO: fill
            - ETHICS (Hendrycks et al, 2020)
              - TODO: fill
            - CyclC
              - TODO: find out what this is and fill
          - Short-answer multi-choice QA
            - QASC (Khot et al, 2020)
              - TODO: fill
          - Long-answer multi-choice QA
            - SWAG (Zellers et al, 2018)
              - TODO: fill
          - NumerSense (Lin et al, 2020) is a masked language modelling benchmark focused on temporal commonsense
          - TODO: fill
        - Datasets
      - Prior work on using commonsense reasoning to improve performance on this task
        - Multi-choice QA (MCQA) over dialogues
          - What is it?
            - The problem of answering multi-choice questions given a dialogue as context (Richardson and Heck, 2023).
          - Methods
            - Datasets
              - CIDER
                - TODO: fill
              - MuTual (Cui et al, 2020)
                - TODO: fill
              - DREAM (Sun et al, 2019)
                - TODO: fill
              - Ubuntu Dialogue Corpus (Lowe et al, 2015)
                - TODO: fill
            - Evaluation metrics
          - Motivation
          - Prior work on using commonsense reasoning to improve performance on this task
          - Proposition to find better ways to do this
        - Multi-turn conversational QA (CQA)
          - What is it?
            - The problem of asking or answering questions in a multi-turn dialogue (Richardson and Heck, 2023).
          - Methods
            - Datasets
              - CoQA (Reddy, Chen, and Manning, 2019)
                - TODO: fill
              - QuAC (Choi et al, 2018)
                - TODO: fill
            - Evaluation metrics
          - Motivation
          - Prior work on using commonsense reasoning to improve performance on this task
          - Proposition to find better ways to do this
      - Proposition to find better ways to do this
    - Dialogue modelling (one page; thirty sentences)
      - What is it?
        - TODO: define dialogue modelling
        - It is used for both open dialogue, the setting where the conversation does not have any particular goal, as typified by the chatbot setting, and task-oriented dialogue (Richardson and Heck, 2023).
        - State-of-the-art models tend to use end-to-end dalogue systems based on large neural models (Ni et al, 2022).
      - Methods
        - Datasets
          - PERSONA-CHAT (Zhang et al, 2018)
            - TODO: fill
          - ConvAI2 (Dinan et al, 2020)
            - TODO: fill
          - DailyDialogue (Li et al, 2017)
            - TODO: fill
          - MultiWOZ (Budzianowski et al, 2018)
            - TODO: fill
        - Evaluation metrics
          - TODO: fill from (Huang et al, 2020)
      - Motivation
      - Prior work on using commonsense reasoning to improve performance on this task
        - (Zhou et al, 2021a)
          - TODO: fill
        - (Zhou et al, 2021b)
          - TODO: fill
        - (Majumder et al, 2020)
          - TODO: fill
      - Proposition to find better ways to do this
    - Dialogue systems (thirty sentences)
      - What is it?
      - Methods
        - Datasets
          - ProsocialDialog
            - TODO: fill from (Kim H et al, 2022)
          - Moral Integrity Corpus
            - From (Ziems et al, 2022): The MORAL INTEGRITY CORPUS,  MIC, is such a resource,  which captures the moral assumptions of 38k prompt-reply pairs, using 99k  distinct Rules  of  Thumb (RoTs).    Each RoT  reflects  a  particular  moral  conviction that  can  explain  why  a  chatbot’s  reply  may appear acceptable or problematic.  We further organize RoTs with a set of 9 moral and social attributes   and   benchmark   performance   for attribute classification.  Most importantly, we show  that  current  neural  language  models can  automatically  generate  new  RoTs  that reasonably  describe  previously  unseen  inter- actions,  but  they  still  struggle  with  certain scenarios.   Our  findings  suggest  that  MIC Á will be a useful resource for understanding and language models’ implicit moral assumptions and flexibly benchmarking the integrity of con- versational agents.
          - Two datasets from (Zhou P et al, 2021)
            - TODO: fill
        - Evaluation metrics
          - TODO: fill from (Huang et al, 2020)
          - Metric for target-guided dialogue systems
            - TODO: fill from (Gupta P et al, 2022)
          - Process from (Zhou P et al, 2021)
            - TODO: fill
      - Motivation
      - Prior work on using commonsense reasoning to improve performance on this task
        - (Majumder et al, 2020)
          - TODO: fill
        - (Zhou P et al, 2021)
          - TODO: fill
        - Using commonsense reasoning to avoid harmful dialogues
          - TODO: fill from (Kim H et al, 2022)
          - Canary:
          - Prost:
        - Using commonsense reasoning to guide a conversation towards a target
          - What is the task of target-guided dialogue?
            - TODO: fill from (Gupta P et al, 2022)
          - TODO: fill from (Gupta P et al, 2022)
        - Using commonsense reasoning to find unstated interlocator assumptions
          - TODO: fill from (Arabshahi F et al, 2021)
      - Proposition to find better ways to do this
    - Recognizing Emotion Cause in Conversations (RECCON) and its subtask Conversational Causal Emotion Entailment (C2E2)
      - First proposed by (Poria et al, 2021)
      - What is it?
        - TODO: fill from (Poria et al, 2021)
        - What is RECCON?
          - TODO: fill from (Poria et al, 2021)
        - What is C2E2?
          - TODO: fill from (Li J et al, 2022)
      - Methods
        - Dataset
          - RECCON
            - TODO: fill from (Poria et al, 2021)
        - Evaluation metrics
          - TODO: fill from (Poria et al, 2021)
      - Motivation
        - TODO: fill from (Poria et al, 2021)
      - Prior work on using commonsense reasoning to improve performance on this task
        - TODO: fill from (Li J et al, 2022)
- Ethical Concerns (one page; twenty sentences)
  - Introduce this section by arguing that, as a result of the impact of the field, ethical concerns should be considered while conducting research in AI
  - Note that some concerns are more immediate and are easier to predict, while others are more distant and thus more difficult to predict
  - Adverse economic impacts (five sentences)
    - What is the concern?
      - Automation leads to job losses, which causes economic problems as proletarians lose their financial income flow
    - How can this be prevented?
      - This is ultimately a question of economics, not artificial intelligence, so economists and sociologists will be better able to resolve this problem should it arise
      - Working within our system of political economy:
        - Job retraining
      - Forming new systems of political economy:
        - UBI
  - Intentional misuse of AG(S)I (five sentences)
    - What is the concern?
    - Why might this happen?
    - How can this be prevented?
    - How might prevention efforts by circumvented, and how can we prevent these cirvumventions?
  - Misalignment
    - What is the concern?
    - Why might this happen?
    - How can this be prevented?
    - How might prevention efforts by circumvented, and how can we prevent these cirvumventions?
  - Intentionally malignant rogue AGSI (five sentences)
    - Open with some tweets by notable scholars in the field on this
    - What is the concern?
    - Why might this happen?
    - How can this be prevented?
    - How might prevention efforts by circumvented, and how can we prevent these cirvumventions?
- Timeline (half page; fifteen sentences)
  - The two major halves of my thesis can be studied concurrently, and I expect to do so
  - GANTT chart (ten sentences)
    - Include joke about how hard it is to write a GANTT chart in LaTeX, but my undergrad was in mathematics and there's no way in Hell I'm not TeXing my writing
  - While I wait for graduate school decisions (three sentences)
    - I cannot run experiments because I do not have access to GPU clusters
    - I will read papers and identify directions on which to work
  - After I get accepted to graduate school (three sentences)
    - I can expect to gain access to GPU clusters by April 15, assuming the standard graduate school admission response deadline
- Conclusion (half page; fifteen sentences)
  - The potential impact of artificial consciousness and AG(S)I (five sentences)
    - Artificial consciousness
      - Expand our understanding of what it means to be 'have a soul'
    - AGI
      - Lead to potentially massive economic gains as intellectual labour is automated, akin to how machine engines automated physical labour
    - AGSI
      - Lead to either Heaven on Earth or Hell on Earth (let's hope for the former)
  - How commonsense reasoning could be a step towards them (five sentences)
  - How my doctoral thesis and matriculation into graduate school works towards this (five sentences)
    - My doctoral thesis and its associated papers would advance the field
    - After graduation, as a professor I would continue conducting research towards artificial consciousness and AG(S)I

# Latent Commonsense Reasoning

[A recent tweet by @jxmnop](https://twitter.com/jxmnop/status/1737500671484514423):

> fun research idea: Latent chain-of-thought / Latent scratchpad
>
> it's well-known that language models perform better when they generate
> intermediate reasoning tokens through some sort of 'scratchpad'.
>
> but there's no reason scratchpad tokens need to be human-readable. in fact,
> generating real language involves a lot of unnecessary tokens. this seems to
> me like a big inefficiency.
>
> let me explain this a little further – under the hood, the typical process for
> generating a scratchpad token looks like
>
> 1. generate a *vector* as the output of the language model
> 2. project this vector to a distribution over tokens
> 3. select the top token (argmax of the distribution)
> 4. exchange that token for its token embedding (vector)
> 5. input token embedding at next position, as the next token input of the LM
>
> steps 2-4 are wasteful, and lose a ton of information! research shows that
> dense vectors are much (much, much, much) more expressive than discrete tokens
>
> So that's why I think we should build models that generate latent scratchpad
> vectors: vectors that don't need to correspond to actual tokens.
>
> operationalizing this idea is hard because we lack supervision– there
> obviously aren't any datasets of *vectors* that show LM intermediate
> reasoning. so we can't "just train a model" to use latent scratchpad.
>
> one option would be to sample some vectors during training and then train the
> model via reinforcement learning. this seems hard; RL is hard
>
> I propose another way. what we do have is datasets with pre-written
> chain-of-thought-y reasoning steps.
>
> so here my idea is to train with another encoder, one that distills these
> reasoning steps to latent tokens, and train a decoder model to mimic the
> output of the encoder for just the chain-of-thought part

Building on this intuition, what if we were to consider commonsense reasoning which does not correspond to human-readable tokens or natural language?
Maybe we could continue to use human-readable natural language but use latent commonsense reasoning for intermediary steps.

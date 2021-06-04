safetail :: [a] -> [a]

safetail [x:xs] = if [] == null then False else 
									safetail = xs

safetail [x:xs]=[]== null safetail = False
										|safetail = [xs]

saftetail [] = []
safetail[x:xs]= xs 

True || True = True 
True || False = True
False || False = False
False || True = True 
-- this is just a better way to write it 
False || b = b 
True || _ = true 
-- instead if you use this the second function would be e
-- evaluted if they are not both true whereas in the first one 
-- it will only be evalutated if it is frist truei
-- the first function above could be used more times and
-- before it goes to the second one whereas the next way 
-- would be used only once 
False || False = False
_ || _ = True 
saftetail xs = if null xs then [] else tail xs 

safetail xs | null xs = []
						| otherwise = tail xs
								

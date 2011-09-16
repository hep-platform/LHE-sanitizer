module HEP.Automation.MadGraph.LHESanitizer.Job where

import HEP.Automation.MadGraph.LHESanitizer.Parse 

startConvert :: FilePath -> FilePath -> IO () 
startConvert ifn ofn = do 
  putStrLn "job started"
  putStrLn $ "processing " ++ ifn ++ " and recording " ++ ofn 
  sanitizeLHEFile ifn ofn 

startCount :: FilePath -> IO () 
startCount fn = do 
  putStrLn "job started"
  putStrLn $ "counting events in " ++ fn 
  countEventInLHEFile fn 
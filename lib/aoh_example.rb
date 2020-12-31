# Examples inspired by David Foster Wallace's # (2/21/1962 to 9/12/2008) _Infinite Jest_

DON_G = { name:  "Don Gately", occupation: "Live-in Staff" }
JOELLE_VD = { name:  "Joelle van Dyne", occupation: "Radio Personality" }
PAT_M =  { name:  "Pat Monteseian", occupation: "Staff" }
KATE_G = { name:  "Kate Gompert", occupation: "None" }
BRUCE_G = { name:  "Bruce Green", occupation: "Fan of Mildred" }

def assembled_aoh
results =   [
 { name:  "Don Gately", occupation: "Live-in Staff" },
 { name:  "Joelle van Dyne", occupation: "Radio Personality" },
 { name:  "Pat Monteseian", occupation: "Staff" },
 { name:  "Kate Gompert", occupation: "None" },
 { name:  "Bruce Green", occupation: "Fan of Mildred" },
]
  # Build an array that contains (or, "nests") the constants into a single
  # Array. Ruby constants are denoted by ALL_CAPS
end

def literal_aoh
  results = []
  
  results.push(DON_G, JOELLE_VD, PAT_M, KATE_G, BRUCE_G)
  # Using Array literal syntax only, build a nested array that uses the data in
  # held in the constants
end

def aoh_lookup(assembled_aoh, row= 2, key= :name)
  assembled_aoh[row][key]
end

def aoh_update(local_copy_of_aoh, row= 1, key= :name, new_value= "Joelle van Dyne (PGOAT)")
  local_copy_of_aoh[row][key]= new_value
  local_copy_of_aoh
  # Update the AoH data at row and key to have the value of new_value
  # Return the updated AoH
end

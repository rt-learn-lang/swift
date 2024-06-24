///////////////////////////////////////////////////////////////////////////////
//
///////////////////////////////////////////////////////////////////////////////

let airlines = ["SWA": "Southwest Airlines",
                "BAW": "British Airways",
                "BHA": "Buddha Air",
                "CPA": "Cathay Pacific"]

print("1. entry contains both the key and the value")
for entry in airlines {
    print(entry)
}

print("\n2. Using separate variables for the key and the value")
for (code, airline) in airlines {
    print(airline)
}

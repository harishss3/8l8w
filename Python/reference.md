## A quick python reference <br>
1. **For string manipulation and parsing**, there are a number of string methods provided in the standard library. 
Additionally, we can use the re library for more powerful and convinient methods.
    - A list of string methods can be found [here](https://docs.python.org/3/library/stdtypes.html#string-methods).
    - The documentation for the re library  can br found [here](https://docs.python.org/3/library/re.html).
    - [String slicing](https://www.geeksforgeeks.org/string-slicing-in-python/) is also a useful tool.
    - The in operator is used to check if a substring is part of a string.
    - The [format operator](https://docs.python.org/3/library/stdtypes.html#printf-style-string-formatting) can be used for printf style printing.
2. **Handling lists**:
    - The list methods can be found [here](https://docs.python.org/3/tutorial/datastructures.html#more-on-lists). Most of the list methods change the list itself and return None.
    - List [comprehension](https://docs.python.org/3/tutorial/datastructures.html#list-comprehensions) is a convinient way of producing lists.
    - [sorted()](https://docs.python.org/3/library/functions.html#sorted) should be preffered to sort lists over the sort method.
    - [map()](https://docs.python.org/3/library/functions.html#map) and [filter()](https://docs.python.org/3/library/functions.html#filter) are also useful functions operating on lists
    - '+' operator concatenates lists. Slicing is also available with lists.
    - Since lists are mutable, aliasing has to be kept in mind.
3. **Tuples, Dictionaries and other iterables**
    - There are only two tuple methods, [count()](https://www.w3schools.com/python/ref_tuple_count.asp) and [index()](https://www.w3schools.com/python/ref_tuple_index.asp).
    - Tuples can be constructed by the tuple([**iterable**]) function.
    - [Here](https://www.w3schools.com/python/python_ref_dictionary.asp) is a list of dictionary methods.
4. **Web Scraping**
    - The [requests](https://requests.readthedocs.io/en/master/) module is used for HTTP handling.
    - The [BeautifulSoup](https://www.crummy.com/software/BeautifulSoup/bs4/doc/) library is helpful for parsing html files.
    The [json](https://docs.python.org/3/library/json.html#basic-usage) and [xml](https://docs.python.org/3.8/library/xml.etree.elementtree.html) modules to handle json and xml files.

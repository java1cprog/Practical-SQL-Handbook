SELECT ed_lname, ed_fname, ed_pos FROM editors CROSS JOIN titleditors WHERE editors.ed_id = titleditors.ed_id AND titleditors.title_id = 'PC8888';
SELECT ed_lname, ed_fname, ed_pos FROM editors natural join titleditors WHERE titleditors.title_id = 'PC8888';
SELECT ed_lname, ed_id, editors.city, pub_name, publishers.city FROM editors, publishers WHERE editors.city = publishers.city AND pub_name = 'Algodata Infosystems';
SELECT ed_lname, ed_id, editors.city, pub_name, publishers.city FROM editors join publishers ON editors.city = publishers.city WHERE pub_name = 'Algodata Infosystems';
SELECT a1.au_id, a1.au_lname, a2.au_id, a2.au_lname FROM authors a1, authors a2 WHERE a1.au_lname = a2.au_lname;
SELECT au_fname, au_lname, pub_name FROM authors left outer join publishers ON authors.city = publishers.city;
SELECT sonum, title FROM salesdetails sd RIGHT OUTER JOIN titles t ON sd.title_id = t.title_id AND qty_ordered > 50;

function searchdb(handles)

genre =  handles.genre;
db = handles.ed_path.String;
db = readtable(db, 'Sheet', genre);

titles = db(:, 'Title');

if isempty(db)
    disp('No entries in this table');
    
else
    disp('searching in database...');
    for i = 1:height(titles)
        out = ismember(titles{i,:}, handles.ed_title.String);
        
        if out ~= 0
            disp('entry exists!');
            break
        end
        
        disp('entry does not exist in database.');
    end
    

end




end

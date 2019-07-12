function write2db(handles)
    disp('writing to database...')
    genre = handles.genre
    db = handles.ed_path.String
    
    old = readtable(db, 'Sheet', genre)
    lastrow = height(old);
    
    yeet = {'ID', 'Title', 'Description', 'Thoughts', 'Score'}
    newentry = {lastrow+1, handles.ed_title.String, handles.ed_desc.String, handles.ed_thots.String, handles.sl_score.Value};
    tab = cell2table(newentry, 'VariableNames', yeet);
    old = [old;tab]
    
    writetable(old, db, 'Sheet', genre)
    disp('done!')
end

select q.SpQueryID, q.name, q.ContextName from spquery q
join specifyuser u on q.specifyuserid = u.specifyuserid
where u.name = 'mark'
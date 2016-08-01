function Revised_Data = label_as_medial_or_lateral(Data, Centroids)
%Medial = 1, Lateral = 2

margins_medial = [60, 200];
hold on
plot(Centroids(:,2), Centroids(:, 1), '*')


for ii = 1:size(Centroids,1)
    if Centroids(ii,2) > margins_medial(1) && Centroids(ii, 2) < margins_medial(2)
        medial_lateral(1,ii) = 1;
        plot(Centroids(ii,2), Centroids(ii, 1), 'g*')
    else
        medial_lateral(1,ii) = 2;
    end
end
Revised_Data = vertcat(Data(1:2,:), medial_lateral, Data(3:end,:));
hold off

end


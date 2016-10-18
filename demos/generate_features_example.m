%---------------------------------------------------------------------
% generate EEG-like data (coloured Gaussian noise)
%---------------------------------------------------------------------
data_st=gen_test_EEGdata(5*60,64,1);

%---------------------------------------------------------------------
% need to remove artefacts?  If so, use 'remove_artefacts' function
%---------------------------------------------------------------------
% $$$ data_st.eeg_data=remove_artefacts(data_st.eeg_data,data_st.ch_labels_bi,data_st.Fs, ...
% $$$                                   data_st.eeg_data_ref,data_st.ch_labels_ref);


%---------------------------------------------------------------------
% define feature set (or can define in QUEEN_parameters.m):
%---------------------------------------------------------------------
feature_set={'spectral_relative_power','rEEG_SD', 'connectivity_BSI'};
	
	
%---------------------------------------------------------------------
% estimate features:
%---------------------------------------------------------------------
feat_st=generate_all_features(data_st,[],feature_set);


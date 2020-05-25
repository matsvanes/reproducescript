%%

cfg = [];
cfg.event_type = 'STI101';
cfg.pretrigger = 1.459;
cfg.posttrigger = 1.541;
cfg.trialfun = 'trial_function';
cfg.dataset = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg/oddball_absence-tsss-mc_meg.fif';
cfg = ft_definetrial(cfg);

%%

cfg = [];
cfg.event_type = 'STI101';
cfg.pretrigger = 1.459;
cfg.posttrigger = 1.541;
cfg.trialfun = 'trial_function';
cfg.dataset = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg/oddball_absence-tsss-mc_meg.fif';
cfg.datafile = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg/oddball_absence-tsss-mc_meg.fif';
cfg.headerfile = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg/oddball_absence-tsss-mc_meg.fif';
cfg.dataformat = 'neuromag_fif';
cfg.headerformat = 'neuromag_fif';
cfg.trl = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T144647_ft_preprocessing_largecfginput_trl.mat';
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T144647_ft_preprocessing_output_data.mat' };
cfg.demean = 'yes';
cfg.baselinewindow = [-Inf Inf];
ft_preprocessing(cfg);

%%

cfg = [];
cfg.event_type = 'STI101';
cfg.pretrigger = 1.459;
cfg.posttrigger = 1.541;
cfg.trialfun = 'trial_function';
cfg.dataset = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg/oddball_absence-tsss-mc_meg-1.fif';
cfg = ft_definetrial(cfg);

%%

cfg = [];
cfg.event_type = 'STI101';
cfg.pretrigger = 1.459;
cfg.posttrigger = 1.541;
cfg.trialfun = 'trial_function';
cfg.dataset = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg/oddball_absence-tsss-mc_meg-1.fif';
cfg.datafile = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg/oddball_absence-tsss-mc_meg-1.fif';
cfg.headerfile = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg/oddball_absence-tsss-mc_meg-1.fif';
cfg.dataformat = 'neuromag_fif';
cfg.headerformat = 'neuromag_fif';
cfg.trl = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T145109_ft_preprocessing_largecfginput_trl.mat';
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T145109_ft_preprocessing_output_data.mat' };
cfg.demean = 'yes';
cfg.baselinewindow = [-Inf Inf];
ft_preprocessing(cfg);

%%

cfg = [];
cfg.event_type = 'STI101';
cfg.pretrigger = 1.459;
cfg.posttrigger = 1.541;
cfg.trialfun = 'trial_function';
cfg.dataset = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg/oddball_absence-tsss-mc_meg-2.fif';
cfg = ft_definetrial(cfg);

%%

cfg = [];
cfg.event_type = 'STI101';
cfg.pretrigger = 1.459;
cfg.posttrigger = 1.541;
cfg.trialfun = 'trial_function';
cfg.dataset = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg/oddball_absence-tsss-mc_meg-2.fif';
cfg.datafile = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg/oddball_absence-tsss-mc_meg-2.fif';
cfg.headerfile = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg/oddball_absence-tsss-mc_meg-2.fif';
cfg.dataformat = 'neuromag_fif';
cfg.headerformat = 'neuromag_fif';
cfg.trl = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T145440_ft_preprocessing_largecfginput_trl.mat';
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T145440_ft_preprocessing_output_data.mat' };
cfg.demean = 'yes';
cfg.baselinewindow = [-Inf Inf];
ft_preprocessing(cfg);

%%

cfg = [];
cfg.inputfile = {
 '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T144647_ft_preprocessing_output_data.mat', '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T145109_ft_preprocessing_output_data.mat', '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T145440_ft_preprocessing_output_data.mat'
};
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T145752_ft_appenddata_output_data.mat' };
ft_appenddata(cfg);

%%

cfg = [];
cfg.offset = -41;
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T145752_ft_appenddata_output_data.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T150655_ft_redefinetrial_output_data.mat' };
ft_redefinetrial(cfg);

%%

cfg = [];
cfg.resamplefs = 200;
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T150655_ft_redefinetrial_output_data.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T151659_ft_resampledata_output_data.mat' };
ft_resampledata(cfg);

%%

cfg = [];
cfg.channel_sets = {
 'MEGMAG', 'MEGGRAD'
};
cfg.keepchannel = 'yes';
cfg.layout = 'neuromag306all.lay';
cfg.keeptrial = 'nan';
cfg.filename = 'removed_trial_indices.tsv';
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.channel = 'MEGMAG';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T151659_ft_resampledata_output_data.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T153300_ft_rejectvisual_output_data.mat' };
ft_rejectvisual(cfg);

%%

cfg = [];
cfg.channel_sets = {
 'MEGMAG', 'MEGGRAD'
};
cfg.keepchannel = 'yes';
cfg.layout = 'neuromag306all.lay';
cfg.keeptrial = 'nan';
cfg.filename = 'removed_trial_indices.tsv';
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.channel = 'MEGGRAD';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T151659_ft_resampledata_output_data.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T153930_ft_rejectvisual_output_data.mat' };
ft_rejectvisual(cfg);

%%

cfg = [];
cfg.trials = [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200 201 202 203 204 205 206 207 208 209 210 211 212 213 214 215 216 217 218 219 220 221 222 223 224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239 240 241 242 243 244 245 246 247 248 249 250 251 252 253 254 255 256 257 258 260 261 262 263 264 265 266 267 268 269 270 271 272 273 274 275 276 277 278 279 280 281 282 283 284 285 286 287 288 289 290 291 292 293 294 295 296 297 298 299 300 301 302 303 304 305 306 307 308 309 310 311 312 313 314 315 316 317 318 319 320 321 322 323 324 325 326 327 328 329 330 331 332 333 334 335 336 337 338 339 340 341 342 343 344 345 346 347 348 349 350 351 352 353 354 355 356 357 358 359 360 361 362 363 364 365 366 367 368 369 370 371 372 373 374 375 376 377 378 379 380 381 382 383 384 385 386 387 388 389 390 391 392 393 394 395 396 397 398 399 400 401 402 403 404 405 406 407 408 409 410 411 412 413 414 415 416 417 418 419 420 421 422 423 424 425 426 427 428 429 430 431 432 433 434 435 436 437 438 440 441 442 443 444 445 446 447 448 449 450 451 452 453 454 455 456 457 458 459 460 461 462 463 464 465 466 467 468 469 470 471 472 473 475 476 477 478 479 480 481 482 483 484 485 486 487 488 489 490 491 492 493 494 495 496 497 498 499 500 501 502 503 504 505 506 507 508 509 510 511 512 513 514 515 516 517 518 519 520 521 522 523 524 525 526 527 528 529 530 531 532 533 534 535 536 537 538 539 540 541 542 543 544 545 546 547 548 549 550 551 552 553 554 555 556 557 558 559 560 561 562 563 564 565 566 567 568 569 570 571 572 573 574 575 576 577 578 579 580 581 583 584 585 586 587 588 589 590 591 592 593 594 595 596 597 598 599 600 601 602 603 604 605 606 607 608 609 610 611 612 613 614 615 616 617 618 619 620 621 622 623 624 625 626 627 628 629 630 631 632 633 634 635 636 637 638 639 640 641 642 643 644 645 646 647 648 649 650 651 652 653 654 655 656 657 658 659 660 661 662 663 664 665 666 667 668 669 670 671 672 673 674 675 676 677 678 679 680 681 682 683 684 685 686 687 688 689 690 691 692 693 694 695 696 697 698 699 700 701 702 703 704 705 706 707 708 709 710 711 712 713 714 715 716 717 718 719 720 721 722 723 724 725 726 727 728 729 730 731 732 733 734 735 736 737 738 739 740 741 742 743 744 745 746 747 748 749 750 751 752 754 755 756 757 758 759 760 761 762 763 764 765 766 767 768 769 770 771 772 773 774 775 776 777 778 779 780 781 782 783 784 785 786 787 788 789 790 791 792 793 794 795 796 797 798 799 800 801 802 803 804 805 806 807 808 809 810 811 812 813 814 815 816 817 818 819 820 821 822 823 824 825 826 827 828 829 830 831 832 833 834 835 836 837 838 839 840 841 842 843 844 845 846 847 848 849 850 851 852 853 854 855 856 857 858 859 860 861 862 863 864 865 866 867 868 869 870 871 872 873 874 875 876 877 878 879 880 881 882 883 884 885 886 887 888 889 890 891 892 893 894 895 896 897 898 899 900 901 902 903 905 906 907 908 909 910 911 912 913 914 915 916 917 918 919 920 921 922 923 924 925 926 927 928 929 930 931 932 933 934 935 936 937 938 939 940 941 942 943 944 945 946 947 948 949 950 951 952 953 954 955 956 957 958 959 960 961 962 963 964 965 966 967 968 969 970 971 972 973 974 975 976 977 978 979 980 981 982 983 984 985 986 987 988 989 990 991 992 993 994 995 996 997 998 999 1000 1001 1002 1003 1004 1005 1006 1007 1008 1009 1010 1011 1012 1013 1014 1015 1016 1017 1020 1021 1022 1023 1024 1025 1026 1027 1028 1029 1030 1031 1032 1033 1035 1036 1037 1038 1039 1040 1041 1042 1043 1044 1045 1046 1047 1048 1049 1050 1051 1052 1053 1054 1055 1056 1057 1058 1059 1060 1061 1062 1063 1064 1065 1066 1067 1068 1069 1070 1071 1072 1073 1074 1075 1076 1077 1078 1079 1080 1081 1082 1083 1084 1085 1086 1087 1088 1089 1090 1091 1092 1093 1094 1095 1096 1097 1098 1099 1100 1101 1102 1103 1104 1105 1106 1107 1108 1109 1110 1111];
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T151659_ft_resampledata_output_data.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T154114_ft_selectdata_output_varargout.mat' };
ft_selectdata(cfg);

%%

cfg = [];
cfg.filename = 'removed_trial_indices.tsv';
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.trials = [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200 201 202 203 204 205 206 207 208 209 210 211 212 213 214 215 216 217 218 219 220 221 222 223 224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239 240 241 242 243 244 245 246 247 248 249 250 251 252 253 254 255 256 257 258 260 261 262 263 264 265 266 267 268 269 270 271 272 273 274 275 276 277 278 279 280 281 282 283 284 285 286 287 288 289 290 291 292 293 294 295 296 297 298 299 300 301 302 303 304 305 306 307 308 309 310 311 312 313 314 315 316 317 318 319 320 321 322 323 324 325 326 327 328 329 330 331 332 333 334 335 336 337 338 339 340 341 342 343 344 345 346 347 348 349 350 351 352 353 354 355 356 357 358 359 360 361 362 363 364 365 366 367 368 369 370 371 372 373 374 375 376 377 378 379 380 381 382 383 384 385 386 387 388 389 390 391 392 393 394 395 396 397 398 399 400 401 402 403 404 405 406 407 408 409 410 411 412 413 414 415 416 417 418 419 420 421 422 423 424 425 426 427 428 429 430 431 432 433 434 435 436 437 438 440 441 442 443 444 445 446 447 448 449 450 451 452 453 454 455 456 457 458 459 460 461 462 463 464 465 466 467 468 469 470 471 472 473 475 476 477 478 479 480 481 482 483 484 485 486 487 488 489 490 491 492 493 494 495 496 497 498 499 500 501 502 503 504 505 506 507 508 509 510 511 512 513 514 515 516 517 518 519 520 521 522 523 524 525 526 527 528 529 530 531 532 533 534 535 536 537 538 539 540 541 542 543 544 545 546 547 548 549 550 551 552 553 554 555 556 557 558 559 560 561 562 563 564 565 566 567 568 569 570 571 572 573 574 575 576 577 578 579 580 581 583 584 585 586 587 588 589 590 591 592 593 594 595 596 597 598 599 600 601 602 603 604 605 606 607 608 609 610 611 612 613 614 615 616 617 618 619 620 621 622 623 624 625 626 627 628 629 630 631 632 633 634 635 636 637 638 639 640 641 642 643 644 645 646 647 648 649 650 651 652 653 654 655 656 657 658 659 660 661 662 663 664 665 666 667 668 669 670 671 672 673 674 675 676 677 678 679 680 681 682 683 684 685 686 687 688 689 690 691 692 693 694 695 696 697 698 699 700 701 702 703 704 705 706 707 708 709 710 711 712 713 714 715 716 717 718 719 720 721 722 723 724 725 726 727 728 729 730 731 732 733 734 735 736 737 738 739 740 741 742 743 744 745 746 747 748 749 750 751 752 754 755 756 757 758 759 760 761 762 763 764 765 766 767 768 769 770 771 772 773 774 775 776 777 778 779 780 781 782 783 784 785 786 787 788 789 790 791 792 793 794 795 796 797 798 799 800 801 802 803 804 805 806 807 808 809 810 811 812 813 814 815 816 817 818 819 820 821 822 823 824 825 826 827 828 829 830 831 832 833 834 835 836 837 838 839 840 841 842 843 844 845 846 847 848 849 850 851 852 853 854 855 856 857 858 859 860 861 862 863 864 865 866 867 868 869 870 871 872 873 874 875 876 877 878 879 880 881 882 883 884 885 886 887 888 889 890 891 892 893 894 895 896 897 898 899 900 901 902 903 905 906 907 908 909 910 911 912 913 914 915 916 917 918 919 920 921 922 923 924 925 926 927 928 929 930 931 932 933 934 935 936 937 938 939 940 941 942 943 944 945 946 947 948 949 950 951 952 953 954 955 956 957 958 959 960 961 962 963 964 965 966 967 968 969 970 971 972 973 974 975 976 977 978 979 980 981 982 983 984 985 986 987 988 989 990 991 992 993 994 995 996 997 998 999 1000 1001 1002 1003 1004 1005 1006 1007 1008 1009 1010 1011 1012 1013 1014 1015 1016 1017 1020 1021 1022 1023 1024 1025 1026 1027 1028 1029 1030 1031 1032 1033 1035 1036 1037 1038 1039 1040 1041 1042 1043 1044 1045 1046 1047 1048 1049 1050 1051 1052 1053 1054 1055 1056 1057 1058 1059 1060 1061 1062 1063 1064 1065 1066 1067 1068 1069 1070 1071 1072 1073 1074 1075 1076 1077 1078 1079 1080 1081 1082 1083 1084 1085 1086 1087 1088 1089 1090 1091 1092 1093 1094 1095 1096 1097 1098 1099 1100 1101 1102 1103 1104 1105 1106 1107 1108 1109 1110 1111];
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T151659_ft_resampledata_output_data.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T154357_ft_selectdata_output_varargout.mat' };
ft_selectdata(cfg);

%%

cfg = [];
cfg.method = 'runica';
cfg.numcomponent = 60;
cfg.demean = 'no';
cfg.channel = 'MEG';
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T154357_ft_selectdata_output_varargout.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T155058_ft_componentanalysis_output_comp.mat' };
cfg.randomseed = uint32([5489 1301868182 2938499221 2950281878 1875628136 751856242 944701696 2243192071 694061057 219885934 2066767472 3182869408 485472502 2336857883 1071588843 3418470598 951210697 3693558366 2923482051 1793174584 2982310801 1586906132 1951078751 1808158765 1733897588 431328322 4202539044 530658942 1714810322 3025256284 3342585396 1937033938 2640572511 1654299090 3692403553 4233871309 3497650794 862629010 2943236032 2426458545 1603307207 1133453895 3099196360 2208657629 2747653927 931059398 761573964 3157853227 785880413 730313442 124945756 2937117055 3295982469 1724353043 3021675344 3884886417 4010150098 4056961966 699635835 2681338818 1339167484 720757518 2800161476 2376097373 1532957371 3902664099 1238982754 3725394514 3449176889 3570962471 4287636090 4087307012 3603343627 202242161 2995682783 1620962684 3704723357 371613603 2814834333 2111005706 624778151 2094172212 4284947003 1211977835 991917094 1570449747 2962370480 1259410321 170182696 146300961 2836829791 619452428 2723670296 1881399711 1161269684 1675188680 4132175277 780088327 3409462821 1036518241 1834958505 3048448173 161811569 618488316 44795092 3918322701 1924681712 3239478144 383254043 4042306580 2146983041 3992780527 3518029708 3545545436 3901231469 1896136409 2028528556 2339662006 501326714 2060962201 2502746480 561575027 581893337 3393774360 1778912547 3626131687 2175155826 319853231 986875531 819755096 2915734330 2688355739 3482074849 2736559 2296975761 1029741190 2876812646 690154749 579200347 4027461746 1285330465 2701024045 4117700889 759495121 3332270341 2313004527 2277067795 4131855432 2722057515 1264804546 3848622725 2211267957 4100593547 959123777 2130745407 3194437393 486673947 1377371204 17472727 352317554 3955548058 159652094 1232063192 3835177280 49423123 3083993636 733092 2120519771 2573409834 1112952433 3239502554 761045320 1087580692 2540165110 641058802 1792435497 2261799288 1579184083 627146892 2165744623 2200142389 2167590760 2381418376 1793358889 3081659520 1663384067 2009658756 2689600308 739136266 2304581039 3529067263 591360555 525209271 3131882996 294230224 2076220115 3113580446 1245621585 1386885462 3203270426 123512128 12350217 354956375 4282398238 3356876605 3888857667 157639694 2616064085 1563068963 2762125883 4045394511 4180452559 3294769488 1684529556 1002945951 3181438866 22506664 691783457 2685221343 171579916 3878728600 2475806724 2030324028 3331164912 1708711359 1970023127 2859691344 2588476477 2748146879 136111222 2967685492 909517429 2835297809 3206906216 3186870716 341264097 2542035121 3353277068 548223577 3170936588 1678403446 297435620 2337555430 466603495 1132321815 1208589219 696392160 894244439 2562678859 470224582 3306867480 201364898 2075966438 1767227936 2929737987 3674877796 2654196643 3692734598 3528895099 2796780123 3048728353 842329300 191554730 2922459673 3489020079 3979110629 1022523848 2202932467 3583655201 3565113719 587085778 4176046313 3013713762 950944241 396426791 3784844662 3477431613 3594592395 2782043838 3392093507 3106564952 2829419931 1358665591 2206918825 3170783123 31522386 2988194168 1782249537 1105080928 843500134 1225290080 1521001832 3605886097 2802786495 2728923319 3996284304 903417639 1171249804 1020374987 2824535874 423621996 1988534473 2493544470 1008604435 1756003503 1488867287 1386808992 732088248 1780630732 2482101014 976561178 1543448953 2602866064 2021139923 1952599828 2360242564 2117959962 2753061860 2388623612 4138193781 2962920654 2284970429 766920861 3457264692 2879611383 815055854 2332929068 1254853997 3740375268 3799380844 4091048725 2006331129 1982546212 686850534 1907447564 2682801776 2780821066 998290361 1342433871 4195430425 607905174 3902331779 2454067926 1708133115 1170874362 2008609376 3260320415 2211196135 433538229 2728786374 2189520818 262554063 1182318347 3710237267 1221022450 715966018 2417068910 2591870721 2870691989 3418190842 4238214053 1540704231 1575580968 2095917976 4078310857 2313532447 2110690783 4056346629 4061784526 1123218514 551538993 597148360 4120175196 3581618160 3181170517 422862282 3227524138 1713114790 662317149 1230418732 928171837 1324564878 1928816105 1786535431 2878099422 3290185549 539474248 1657512683 552370646 1671741683 3655312128 1552739510 2605208763 1441755014 181878989 3124053868 1447103986 3183906156 1728556020 3502241336 3055466967 1013272474 818402132 1715099063 2900113506 397254517 4194863039 1009068739 232864647 2540223708 2608288560 2415367765 478404847 3455100648 3182600021 2115988978 434269567 4117179324 3461774077 887256537 3545801025 286388911 3451742129 1981164769 786667016 3310123729 3097811076 2224235657 2959658883 3370969234 2514770915 3345656436 2677010851 2206236470 271648054 2342188545 4292848611 3646533909 3754009956 3803931226 4160647125 1477814055 4043852216 1876372354 3133294443 3871104810 3177020907 2074304428 3479393793 759562891 164128153 1839069216 2114162633 3989947309 3611054956 1333547922 835429831 494987340 171987910 1252001001 370809172 3508925425 2535703112 1276855041 1922855120 835673414 3030664304 613287117 171219893 3423096126 3376881639 2287770315 1658692645 1262815245 3957234326 1168096164 2968737525 2655813712 2132313144 3976047964 326516571 353088456 3679188938 3205649712 2654036126 1249024881 880166166 691800469 2229503665 1673458056 4032208375 1851778863 2563757330 376742205 1794655231 340247333 1505873033 396524441 879666767 3335579166 3260764261 3335999539 506221798 4214658741 975887814 2080536343 3360539560 571586418 138896374 4234352651 2737620262 3928362291 1516365296 38056726 3599462320 3585007266 3850961033 471667319 1536883193 2310166751 1861637689 2530999841 4139843801 2710569485 827578615 2012334720 2907369459 3029312804 2820112398 1965028045 35518606 2478379033 643747771 1924139484 4123405127 3811735531 3429660832 3285177704 1948416081 1311525291 1183517742 1739192232 3979815115 2567840007 4116821529 213304419 4125718577 1473064925 2442436592 1893310111 4195361916 3747569474 828465101 2991227658 750582866 1205170309 1409813056 678418130 1171531016 3821236156 354504587 4202874632 3882511497 1893248677 1903078632 26340130 2069166240 3657122492 3725758099 831344905 811453383 3447711422 2434543565 4166886888 3358210805 4142984013 2988152326 3527824853 982082992 2809155763 190157081 3340214818 2365432395 2548636180 2894533366 3474657421 2372634704 2845748389 43024175 2774226648 1987702864 3186502468 453610222 4204736567 1392892630 2471323686 2470534280 3541393095 4269885866 3909911300 759132955 1482612480 667715263 1795580598 2337923983 3390586366 581426223 1515718634 476374295 705213300 363062054 2084697697 2407503428 2292957699 2426213835 2199989172 1987356470 4026755612 2147252133 270400031 1367820199 2369854699 2844269403 79981964 624]).';
ft_componentanalysis(cfg);

%%

cfg = [];
cfg.demean = 'no';
cfg.filename = 'ica_components.tsv';
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.component = [1 2];
cfg.inputfile = {
 '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T155058_ft_componentanalysis_output_comp.mat', '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T154357_ft_selectdata_output_varargout.mat'
};
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T155158_ft_rejectcomponent_output_data.mat' };
ft_rejectcomponent(cfg);

%%

cfg = [];
cfg.events = {
 1, 2, 3, 13, 14, 15, 21
};
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.trials = logical([true false false false false true false false false false true false false false true false false false true false false false false false true false false false false false false false false true false false false false false true false false false true false false false true false false false false false true false false false false false false false true false false false false true false false false true false false false false false true false false false false true false false false false false false false false true false false false false true false false false true false false false true false false false false true false false false false false true false false false false false false false true false false false true false false false false false true false false false false true false false false true false false false false true false false false false false false true false false false false false true false false false false false true false false false false true false false false false false true false false false false false false true false false false false false true false false false true false false false false true false false false false true false false false true false false false false false false true false false false false false true false false false false false true false false false false true false false false false false true false false false false false false true false false false false true false false false false false true false false true false false false false true false false false true false false false false false false true false false false false false true false false false false true false false false false false true false false false false true false false false false false false false false false true false false false false true false false false true false false false false true false false false true false false false false false true false false false false false false true false false false false false true false false false false true false false false true false false false false false true false false false false false false false true false false false false false true false false false true false false false true false false false false true false false false false false false false false true false false false false true false false false true false false false false false true false false false false true false false false false false false false true false false false true false false false false false true false false false true false false false false true false false false true false false false false false false false true false false false false false true false false false false false false false false false false true false false true false false false false false false false false true false false false false true false false false false true false false false true false false false true false false false true false false false false false false false false true false false false false false true false false false false true false false false false true false false false false true false false false false false false false false true false false false false true false false false true false false false true false false false false false true false false false true false false false false false false false true false false false true false false false false true false false false false false true false false false false false true false false false false false false false true false false false false false true false false false true false false false false true false false false false false true false false false false false false true false false false false true false false false true false false false false false true false false false false false true false false false false false false false true false false false true false false false false true false false false false true false false false true false false false true false false false false false false false false true false false false false false true false false false false false true false false false false true false false false false false true false false false false false false false true false false false true false false false true false false false false true false false false true false false false true false false false false false false true false false false false false true false false false false false true false false false true false false false false false true false false false false false false true false false false false false true false false false false true false false false false true false false false true false false false false false false false false true false false false false true false false false false true false false false false false true false false false true false false false false false false false false true false false false true false false false false false true false false false false true false false false true false false false false false false false false true false false false true false false false false true false false false true false false false false false true false false false false true false false false false false false false false false false false false true false false false false false true false false false false true false false false true false false false true false false false false false false false false true false false false false true false false false false true false false false true false false false false false true false false false false false false false false true false false false true false false false true false false false false false true false false false false true false false false true false false false false false false false false true false false false false true false false false false true false false false true false false false false true false true false false false false false false false false true false false false false true false false false true false false false false true false false false false false true false false false false false false false true false false false true false false false false false true false false false false true false false false true false false false false true false false false false false false false false true false false false false false true false false false true false false false true false false false false true]).';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T155158_ft_rejectcomponent_output_data.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T155448_ft_timelockanalysis_output_timelock.mat' };
ft_timelockanalysis(cfg);

%%

cfg = [];
cfg.events = {
 1, 2, 3, 13, 14, 15, 21
};
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.trials = logical([false true false false false false true false false false false true false false false true false false false true false false false false false true false false false false false false false false true false false false false false true false false false true false false false true false false false false false true false false false false false false false true false false false false true false false false true false false false false false true false false false false true false false false false false false false false true false false false false true false false false true false false false true false false false false true false false false false false true false false false false false false false true false false false true false false false false false true false false false false true false false false true false false false false true false false false false false false true false false false false false true false false false false false true false false false false true false false false false false true false false false false false false true false false false false false true false false false true false false false false true false false false false true false false false true false false false false false false true false false false false false true false false false false false true false false false false true false false false false false true false false false false false false true false false false false true false false false false false true false false true false false false false true false false false true false false false false false false true false false false false false true false false false false true false false false false false true false false false false true false false false false false false false false false true false false false false true false false false true false false false false true false false false true false false false false false true false false false false false false true false false false false false true false false false false true false false false true false false false false false true false false false false false false false true false false false false false true false false false true false false false true false false false false true false false false false false false false false true false false false false true false false false true false false false false false true false false false false true false false false false false false false true false false false true false false false false false true false false false false false false false false true false false false true false false false false false false false true false false false false false true false false false false true false false false false false false false false true false false false false false false false false true false false false false true false false false false true false false false true false false false true false false false true false false false false false false false false true false false false false false true false false false false true false false false false true false false false false true false false false false false false false false true false false false false true false false false true false false false true false false false false false true false false false true false false false false false false false true false false false true false false false false true false false false false false true false false false false false true false false false false false false false true false false false false false true false false false true false false false false true false false false false false true false false false false false false true false false false false true false false false true false false false false false true false false false false false true false false false false false false false true false false false true false false false false true false false false false true false false false true false false false true false false false false false false false false true false false false false false true false false false false false true false false false false true false false false false false true false false false false false false false true false false false true false false false true false false false false true false false false true false false false true false false false false false false true false false false false false true false false false false false true false false false true false false false false false true false false false false false false true false false false false false true false false false false true false false false false true false false false true false false false false false false false false true false false false false true false false false false true false false false false false true false false false true false false false false false false false false true false false false true false false false false false true false false false false true false false false true false false false false false false false false true false false false true false false false false true false false false true false false false false false true false false false false true false false false false false false false true false false false false true false false false false false true false false false false true false false false true false false false true false false false false false false false false true false false false false true false false false false true false false false true false false false false false true false false false false false false false false true false false false true false false false true false false false false false true false false false false true false false false true false false false false false false false false true false false false false true false false false false true false false false true false false false false false false true false false false false false false false false true false false false false true false false false true false false false false true false false false false false true false false false false false false false true false false false true false false false false false true false false false false true false false false true false false false false true false false false false false false false false true false false false false false true false false false true false false false true false false false false]).';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T155158_ft_rejectcomponent_output_data.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T155510_ft_timelockanalysis_output_timelock.mat' };
ft_timelockanalysis(cfg);

%%

cfg = [];
cfg.events = {
 1, 2, 3, 13, 14, 15, 21
};
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.trials = logical([false false true false false false false true false false false false true false false false true false false false true false false false false false true false false false false false false false false true false false false false false true false false false true false false false true false false false false false true false false false false false false false true false false false false true false false false true false false false false false true false false false false true false false false false false false false false true false false false false true false false false true false false false true false false false false true false false false false false true false false false false false false false true false false false true false false false false false true false false false false true false false false true false false false false true false false false false false false true false false false false false true false false false false false true false false false false true false false false false false true false false false false false false true false false false false false true false false false true false false false false true false false false false true false false false true false false false false false false true false false false false false true false false false false false true false false false false true false false false false false true false false false false false false true false false false false true false false false false false true false false true false false false false true false false false true false false false false false false true false false false false false true false false false false true false false false false false true false false false false true false false false false false false false false false true false false false false true false false false true false false false false true false false false true false false false false false true false false false false false false true false false false false false true false false false false true false false false true false false false false false true false false false false false false false true false false false false false true false false false true false false false true false false false false true false false false false false false false false true false false false false true false false false true false false false false false true false false false false true false false false false false false false true false false false true false false false false false true false false true false false false false false true false false false true false false false false false false false true false false false false false true false false false false true false false false false true false false false true false false false false false false false false true false false false false true false false false false true false false false true false false false true false false false true false false false false false false false false true false false false false false true false false false false true false false false false true false false false false true false false false false false false false false true false false false false true false false false true false false false true false false false false false true false false false true false false false false false false false true false false false true false false false false true false false false false false true false false false false false true false false false false false false false true false false false false false true false false false true false false false false true false false false false false true false false false false false false true false false false false true false false false true false false false false false true false false false false false true false false false false false false false true false false false true false false false false true false false false false true false false false true false false false true false false false false false false false false true false false false false false true false false false false false true false false false false true false false false false false true false false false false false false false true false false false true false false false true false false false false true false false false true false false false true false false false false false false true false false false false false true false false false false false true false false false true false false false false false true false false false false false false true false false false false false true false false false false true false false false false true false false false true false false false false false false false false true false false false false true false false false false true false false false false false true false false false true false false false false false false false false true false false false true false false false false false true false false false false true false false false true false false false false false false false false true false false false true false false false false true false false false true false false false false false true false false false false true false false false false false false false true false false false false true false false false false false true false false false false true false false false true false false false true false false false false false false false false true false false false false true false false false false true false false false true false false false false false true false false false false false false false false true false false false true false false false true false false false false false true false false false false true false false false true false false false false false false false false true false false false false true false false false false true false false false true false false false false false false true false false false false false false false false true false false false false true false false false true false false false false true false false false false false true false false false false false false false true false false false true false false false false false true false false false false true false false false true false false false false true false false false false false false false false true false false false false false true false false false true false false false true false false false]).';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T155158_ft_rejectcomponent_output_data.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T155533_ft_timelockanalysis_output_timelock.mat' };
ft_timelockanalysis(cfg);

%%

cfg = [];
cfg.events = {
 1, 2, 3, 13, 14, 15, 21
};
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.trials = logical([false false false false false false false false false false false false false true false false false true false false false false false false false false false false false false false false false false false false false false false false false false true false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false true false false false false false false false false false false false false false true false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false true false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false true false false false false false false false false false true false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false true false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false true false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false true false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false true false false false false false false false false false true false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false true false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false true false false false false false false false false true false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false true false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false true false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false true false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false true false false false true false false false false false false]).';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T155158_ft_rejectcomponent_output_data.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T155554_ft_timelockanalysis_output_timelock.mat' };
ft_timelockanalysis(cfg);

%%

cfg = [];
cfg.events = {
 1, 2, 3, 13, 14, 15, 21
};
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.trials = logical([false false false false true false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false false true false false false false false false false false false false false false true false false false false false false false false false false true false false false false false false false false false false false false false false false false false true false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false true false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false true false false false false true false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false true false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false true false false false false false false false false false false false false false false false true false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false true false false false false false false false false false false false false false false false false false true false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false true false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false true false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false true false false false false true false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false true false false false false false false false false false false false false false false false false false true false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false true false]).';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T155158_ft_rejectcomponent_output_data.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T155616_ft_timelockanalysis_output_timelock.mat' };
ft_timelockanalysis(cfg);

%%

cfg = [];
cfg.events = {
 1, 2, 3, 13, 14, 15, 21
};
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.trials = logical([false false false false false false false false false false false false false false false false false false false false false false false true false false false false false true false false false false false false false false true false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false true false false false false false false false false false false true false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false true false false false false false false false false false false true false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false true false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false true false false false false true false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false true false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false true false false false false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false true false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false true false false false false false true false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false true false false false false false false false false false true false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false true false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false true false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false true false false false false false false false false true false false false false false false false false false false false false false false]).';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T155158_ft_rejectcomponent_output_data.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T155638_ft_timelockanalysis_output_timelock.mat' };
ft_timelockanalysis(cfg);

%%

cfg = [];
cfg.events = {
 1, 2, 3, 13, 14, 15, 21
};
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.trials = logical([false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false true true false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false]).';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T155158_ft_rejectcomponent_output_data.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T155700_ft_timelockanalysis_output_timelock.mat' };
ft_timelockanalysis(cfg);

%%

cfg = [];
cfg.method = 'wavelet';
cfg.width = 7;
cfg.foilim = [1 40];
cfg.toi = [-1.5 -1.495 -1.49 -1.485 -1.48 -1.475 -1.47 -1.465 -1.46 -1.455 -1.45 -1.445 -1.44 -1.435 -1.43 -1.425 -1.42 -1.415 -1.41 -1.405 -1.4 -1.395 -1.39 -1.385 -1.38 -1.375 -1.37 -1.365 -1.36 -1.355 -1.35 -1.345 -1.34 -1.335 -1.33 -1.325 -1.32 -1.315 -1.31 -1.305 -1.3 -1.295 -1.29 -1.285 -1.28 -1.275 -1.27 -1.265 -1.26 -1.255 -1.25 -1.245 -1.24 -1.235 -1.23 -1.225 -1.22 -1.215 -1.21 -1.205 -1.2 -1.195 -1.19 -1.185 -1.18 -1.175 -1.17 -1.165 -1.16 -1.155 -1.15 -1.145 -1.14 -1.135 -1.13 -1.125 -1.12 -1.115 -1.11 -1.105 -1.1 -1.095 -1.09 -1.085 -1.08 -1.075 -1.07 -1.065 -1.06 -1.055 -1.05 -1.045 -1.04 -1.035 -1.03 -1.025 -1.02 -1.015 -1.01 -1.005 -1 -0.995 -0.99 -0.985 -0.98 -0.975 -0.97 -0.965 -0.96 -0.955 -0.95 -0.945 -0.94 -0.935 -0.93 -0.925 -0.92 -0.915 -0.91 -0.905 -0.9 -0.895 -0.89 -0.885 -0.88 -0.875 -0.87 -0.865 -0.86 -0.855 -0.85 -0.845 -0.84 -0.835 -0.83 -0.825 -0.82 -0.815 -0.81 -0.805 -0.8 -0.795 -0.79 -0.785 -0.78 -0.775 -0.77 -0.765 -0.76 -0.755 -0.75 -0.745 -0.74 -0.735 -0.73 -0.725 -0.72 -0.715 -0.71 -0.705 -0.7 -0.695 -0.69 -0.685 -0.68 -0.675 -0.67 -0.665 -0.66 -0.655 -0.65 -0.645 -0.64 -0.635 -0.63 -0.625 -0.62 -0.615 -0.61 -0.605 -0.6 -0.595 -0.59 -0.585 -0.58 -0.575 -0.57 -0.565 -0.56 -0.555 -0.55 -0.545 -0.54 -0.535 -0.53 -0.525 -0.52 -0.515 -0.51 -0.505 -0.5 -0.495 -0.49 -0.485 -0.48 -0.475 -0.47 -0.465 -0.46 -0.455 -0.45 -0.445 -0.44 -0.435 -0.43 -0.425 -0.42 -0.415 -0.41 -0.405 -0.4 -0.395 -0.39 -0.385 -0.38 -0.375 -0.37 -0.365 -0.36 -0.355 -0.35 -0.345 -0.34 -0.335 -0.33 -0.325 -0.32 -0.315 -0.31 -0.305 -0.3 -0.295 -0.29 -0.285 -0.28 -0.275 -0.27 -0.265 -0.26 -0.255 -0.25 -0.245 -0.24 -0.235 -0.23 -0.225 -0.22 -0.215 -0.21 -0.205 -0.2 -0.195 -0.19 -0.185 -0.18 -0.175 -0.17 -0.165 -0.16 -0.155 -0.15 -0.145 -0.14 -0.135 -0.13 -0.125 -0.12 -0.115 -0.11 -0.105 -0.0999999999999999 -0.095 -0.0900000000000001 -0.085 -0.0800000000000001 -0.075 -0.0700000000000001 -0.0649999999999999 -0.0600000000000001 -0.0549999999999999 -0.05 -0.0449999999999999 -0.04 -0.0349999999999999 -0.03 -0.0249999999999999 -0.02 -0.0149999999999999 -0.01 -0.00499999999999989 0 0.00499999999999989 0.01 0.0149999999999999 0.02 0.0249999999999999 0.03 0.0349999999999999 0.04 0.0449999999999999 0.05 0.0549999999999999 0.0600000000000001 0.0649999999999999 0.0700000000000001 0.075 0.0800000000000001 0.085 0.0900000000000001 0.095 0.0999999999999999 0.105 0.11 0.115 0.12 0.125 0.13 0.135 0.14 0.145 0.15 0.155 0.16 0.165 0.17 0.175 0.18 0.185 0.19 0.195 0.2 0.205 0.21 0.215 0.22 0.225 0.23 0.235 0.24 0.245 0.25 0.255 0.26 0.265 0.27 0.275 0.28 0.285 0.29 0.295 0.3 0.305 0.31 0.315 0.32 0.325 0.33 0.335 0.34 0.345 0.35 0.355 0.36 0.365 0.37 0.375 0.38 0.385 0.39 0.395 0.4 0.405 0.41 0.415 0.42 0.425 0.43 0.435 0.44 0.445 0.45 0.455 0.46 0.465 0.47 0.475 0.48 0.485 0.49 0.495 0.5 0.505 0.51 0.515 0.52 0.525 0.53 0.535 0.54 0.545 0.55 0.555 0.56 0.565 0.57 0.575 0.58 0.585 0.59 0.595 0.6 0.605 0.61 0.615 0.62 0.625 0.63 0.635 0.64 0.645 0.65 0.655 0.66 0.665 0.67 0.675 0.68 0.685 0.69 0.695 0.7 0.705 0.71 0.715 0.72 0.725 0.73 0.735 0.74 0.745 0.75 0.755 0.76 0.765 0.77 0.775 0.78 0.785 0.79 0.795 0.8 0.805 0.81 0.815 0.82 0.825 0.83 0.835 0.84 0.845 0.85 0.855 0.86 0.865 0.87 0.875 0.88 0.885 0.89 0.895 0.9 0.905 0.91 0.915 0.92 0.925 0.93 0.935 0.94 0.945 0.95 0.955 0.96 0.965 0.97 0.975 0.98 0.985 0.99 0.995 1 1.005 1.01 1.015 1.02 1.025 1.03 1.035 1.04 1.045 1.05 1.055 1.06 1.065 1.07 1.075 1.08 1.085 1.09 1.095 1.1 1.105 1.11 1.115 1.12 1.125 1.13 1.135 1.14 1.145 1.15 1.155 1.16 1.165 1.17 1.175 1.18 1.185 1.19 1.195 1.2 1.205 1.21 1.215 1.22 1.225 1.23 1.235 1.24 1.245 1.25 1.255 1.26 1.265 1.27 1.275 1.28 1.285 1.29 1.295 1.3 1.305 1.31 1.315 1.32 1.325 1.33 1.335 1.34 1.345 1.35 1.355 1.36 1.365 1.37 1.375 1.38 1.385 1.39 1.395 1.4 1.405 1.41 1.415 1.42 1.425 1.43 1.435 1.44 1.445 1.45 1.455 1.46 1.465 1.47 1.475 1.48 1.485 1.49 1.495 1.5];
cfg.pad = 'nextpow2';
cfg.events = {
 1, 2, 3, 13, 14, 15, 21
};
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.trials = logical([true false false false false true false false false false true false false false true false false false true false false false false false true false false false false false false false false true false false false false false true false false false true false false false true false false false false false true false false false false false false false true false false false false true false false false true false false false false false true false false false false true false false false false false false false false true false false false false true false false false true false false false true false false false false true false false false false false true false false false false false false false true false false false true false false false false false true false false false false true false false false true false false false false true false false false false false false true false false false false false true false false false false false true false false false false true false false false false false true false false false false false false true false false false false false true false false false true false false false false true false false false false true false false false true false false false false false false true false false false false false true false false false false false true false false false false true false false false false false true false false false false false false true false false false false true false false false false false true false false true false false false false true false false false true false false false false false false true false false false false false true false false false false true false false false false false true false false false false true false false false false false false false false false true false false false false true false false false true false false false false true false false false true false false false false false true false false false false false false true false false false false false true false false false false true false false false true false false false false false true false false false false false false false true false false false false false true false false false true false false false true false false false false true false false false false false false false false true false false false false true false false false true false false false false false true false false false false true false false false false false false false true false false false true false false false false false true false false false true false false false false true false false false true false false false false false false false true false false false false false true false false false false false false false false false false true false false true false false false false false false false false true false false false false true false false false false true false false false true false false false true false false false true false false false false false false false false true false false false false false true false false false false true false false false false true false false false false true false false false false false false false false true false false false false true false false false true false false false true false false false false false true false false false true false false false false false false false true false false false true false false false false true false false false false false true false false false false false true false false false false false false false true false false false false false true false false false true false false false false true false false false false false true false false false false false false true false false false false true false false false true false false false false false true false false false false false true false false false false false false false true false false false true false false false false true false false false false true false false false true false false false true false false false false false false false false true false false false false false true false false false false false true false false false false true false false false false false true false false false false false false false true false false false true false false false true false false false false true false false false true false false false true false false false false false false true false false false false false true false false false false false true false false false true false false false false false true false false false false false false true false false false false false true false false false false true false false false false true false false false true false false false false false false false false true false false false false true false false false false true false false false false false true false false false true false false false false false false false false true false false false true false false false false false true false false false false true false false false true false false false false false false false false true false false false true false false false false true false false false true false false false false false true false false false false true false false false false false false false false false false false false true false false false false false true false false false false true false false false true false false false true false false false false false false false false true false false false false true false false false false true false false false true false false false false false true false false false false false false false false true false false false true false false false true false false false false false true false false false false true false false false true false false false false false false false false true false false false false true false false false false true false false false true false false false false true false true false false false false false false false false true false false false false true false false false true false false false false true false false false false false true false false false false false false false true false false false true false false false false false true false false false false true false false false true false false false false true false false false false false false false false true false false false false false true false false false true false false false true false false false false true]).';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T155816_ft_freqanalysis_input_data.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T161544_ft_freqanalysis_output_freq.mat' };
ft_freqanalysis(cfg);

%%

cfg = [];
cfg.method = 'wavelet';
cfg.width = 7;
cfg.foilim = [1 40];
cfg.toi = [-1.5 -1.495 -1.49 -1.485 -1.48 -1.475 -1.47 -1.465 -1.46 -1.455 -1.45 -1.445 -1.44 -1.435 -1.43 -1.425 -1.42 -1.415 -1.41 -1.405 -1.4 -1.395 -1.39 -1.385 -1.38 -1.375 -1.37 -1.365 -1.36 -1.355 -1.35 -1.345 -1.34 -1.335 -1.33 -1.325 -1.32 -1.315 -1.31 -1.305 -1.3 -1.295 -1.29 -1.285 -1.28 -1.275 -1.27 -1.265 -1.26 -1.255 -1.25 -1.245 -1.24 -1.235 -1.23 -1.225 -1.22 -1.215 -1.21 -1.205 -1.2 -1.195 -1.19 -1.185 -1.18 -1.175 -1.17 -1.165 -1.16 -1.155 -1.15 -1.145 -1.14 -1.135 -1.13 -1.125 -1.12 -1.115 -1.11 -1.105 -1.1 -1.095 -1.09 -1.085 -1.08 -1.075 -1.07 -1.065 -1.06 -1.055 -1.05 -1.045 -1.04 -1.035 -1.03 -1.025 -1.02 -1.015 -1.01 -1.005 -1 -0.995 -0.99 -0.985 -0.98 -0.975 -0.97 -0.965 -0.96 -0.955 -0.95 -0.945 -0.94 -0.935 -0.93 -0.925 -0.92 -0.915 -0.91 -0.905 -0.9 -0.895 -0.89 -0.885 -0.88 -0.875 -0.87 -0.865 -0.86 -0.855 -0.85 -0.845 -0.84 -0.835 -0.83 -0.825 -0.82 -0.815 -0.81 -0.805 -0.8 -0.795 -0.79 -0.785 -0.78 -0.775 -0.77 -0.765 -0.76 -0.755 -0.75 -0.745 -0.74 -0.735 -0.73 -0.725 -0.72 -0.715 -0.71 -0.705 -0.7 -0.695 -0.69 -0.685 -0.68 -0.675 -0.67 -0.665 -0.66 -0.655 -0.65 -0.645 -0.64 -0.635 -0.63 -0.625 -0.62 -0.615 -0.61 -0.605 -0.6 -0.595 -0.59 -0.585 -0.58 -0.575 -0.57 -0.565 -0.56 -0.555 -0.55 -0.545 -0.54 -0.535 -0.53 -0.525 -0.52 -0.515 -0.51 -0.505 -0.5 -0.495 -0.49 -0.485 -0.48 -0.475 -0.47 -0.465 -0.46 -0.455 -0.45 -0.445 -0.44 -0.435 -0.43 -0.425 -0.42 -0.415 -0.41 -0.405 -0.4 -0.395 -0.39 -0.385 -0.38 -0.375 -0.37 -0.365 -0.36 -0.355 -0.35 -0.345 -0.34 -0.335 -0.33 -0.325 -0.32 -0.315 -0.31 -0.305 -0.3 -0.295 -0.29 -0.285 -0.28 -0.275 -0.27 -0.265 -0.26 -0.255 -0.25 -0.245 -0.24 -0.235 -0.23 -0.225 -0.22 -0.215 -0.21 -0.205 -0.2 -0.195 -0.19 -0.185 -0.18 -0.175 -0.17 -0.165 -0.16 -0.155 -0.15 -0.145 -0.14 -0.135 -0.13 -0.125 -0.12 -0.115 -0.11 -0.105 -0.0999999999999999 -0.095 -0.0900000000000001 -0.085 -0.0800000000000001 -0.075 -0.0700000000000001 -0.0649999999999999 -0.0600000000000001 -0.0549999999999999 -0.05 -0.0449999999999999 -0.04 -0.0349999999999999 -0.03 -0.0249999999999999 -0.02 -0.0149999999999999 -0.01 -0.00499999999999989 0 0.00499999999999989 0.01 0.0149999999999999 0.02 0.0249999999999999 0.03 0.0349999999999999 0.04 0.0449999999999999 0.05 0.0549999999999999 0.0600000000000001 0.0649999999999999 0.0700000000000001 0.075 0.0800000000000001 0.085 0.0900000000000001 0.095 0.0999999999999999 0.105 0.11 0.115 0.12 0.125 0.13 0.135 0.14 0.145 0.15 0.155 0.16 0.165 0.17 0.175 0.18 0.185 0.19 0.195 0.2 0.205 0.21 0.215 0.22 0.225 0.23 0.235 0.24 0.245 0.25 0.255 0.26 0.265 0.27 0.275 0.28 0.285 0.29 0.295 0.3 0.305 0.31 0.315 0.32 0.325 0.33 0.335 0.34 0.345 0.35 0.355 0.36 0.365 0.37 0.375 0.38 0.385 0.39 0.395 0.4 0.405 0.41 0.415 0.42 0.425 0.43 0.435 0.44 0.445 0.45 0.455 0.46 0.465 0.47 0.475 0.48 0.485 0.49 0.495 0.5 0.505 0.51 0.515 0.52 0.525 0.53 0.535 0.54 0.545 0.55 0.555 0.56 0.565 0.57 0.575 0.58 0.585 0.59 0.595 0.6 0.605 0.61 0.615 0.62 0.625 0.63 0.635 0.64 0.645 0.65 0.655 0.66 0.665 0.67 0.675 0.68 0.685 0.69 0.695 0.7 0.705 0.71 0.715 0.72 0.725 0.73 0.735 0.74 0.745 0.75 0.755 0.76 0.765 0.77 0.775 0.78 0.785 0.79 0.795 0.8 0.805 0.81 0.815 0.82 0.825 0.83 0.835 0.84 0.845 0.85 0.855 0.86 0.865 0.87 0.875 0.88 0.885 0.89 0.895 0.9 0.905 0.91 0.915 0.92 0.925 0.93 0.935 0.94 0.945 0.95 0.955 0.96 0.965 0.97 0.975 0.98 0.985 0.99 0.995 1 1.005 1.01 1.015 1.02 1.025 1.03 1.035 1.04 1.045 1.05 1.055 1.06 1.065 1.07 1.075 1.08 1.085 1.09 1.095 1.1 1.105 1.11 1.115 1.12 1.125 1.13 1.135 1.14 1.145 1.15 1.155 1.16 1.165 1.17 1.175 1.18 1.185 1.19 1.195 1.2 1.205 1.21 1.215 1.22 1.225 1.23 1.235 1.24 1.245 1.25 1.255 1.26 1.265 1.27 1.275 1.28 1.285 1.29 1.295 1.3 1.305 1.31 1.315 1.32 1.325 1.33 1.335 1.34 1.345 1.35 1.355 1.36 1.365 1.37 1.375 1.38 1.385 1.39 1.395 1.4 1.405 1.41 1.415 1.42 1.425 1.43 1.435 1.44 1.445 1.45 1.455 1.46 1.465 1.47 1.475 1.48 1.485 1.49 1.495 1.5];
cfg.pad = 'nextpow2';
cfg.events = {
 1, 2, 3, 13, 14, 15, 21
};
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.trials = logical([false true false false false false true false false false false true false false false true false false false true false false false false false true false false false false false false false false true false false false false false true false false false true false false false true false false false false false true false false false false false false false true false false false false true false false false true false false false false false true false false false false true false false false false false false false false true false false false false true false false false true false false false true false false false false true false false false false false true false false false false false false false true false false false true false false false false false true false false false false true false false false true false false false false true false false false false false false true false false false false false true false false false false false true false false false false true false false false false false true false false false false false false true false false false false false true false false false true false false false false true false false false false true false false false true false false false false false false true false false false false false true false false false false false true false false false false true false false false false false true false false false false false false true false false false false true false false false false false true false false true false false false false true false false false true false false false false false false true false false false false false true false false false false true false false false false false true false false false false true false false false false false false false false false true false false false false true false false false true false false false false true false false false true false false false false false true false false false false false false true false false false false false true false false false false true false false false true false false false false false true false false false false false false false true false false false false false true false false false true false false false true false false false false true false false false false false false false false true false false false false true false false false true false false false false false true false false false false true false false false false false false false true false false false true false false false false false true false false false false false false false false true false false false true false false false false false false false true false false false false false true false false false false true false false false false false false false false true false false false false false false false false true false false false false true false false false false true false false false true false false false true false false false true false false false false false false false false true false false false false false true false false false false true false false false false true false false false false true false false false false false false false false true false false false false true false false false true false false false true false false false false false true false false false true false false false false false false false true false false false true false false false false true false false false false false true false false false false false true false false false false false false false true false false false false false true false false false true false false false false true false false false false false true false false false false false false true false false false false true false false false true false false false false false true false false false false false true false false false false false false false true false false false true false false false false true false false false false true false false false true false false false true false false false false false false false false true false false false false false true false false false false false true false false false false true false false false false false true false false false false false false false true false false false true false false false true false false false false true false false false true false false false true false false false false false false true false false false false false true false false false false false true false false false true false false false false false true false false false false false false true false false false false false true false false false false true false false false false true false false false true false false false false false false false false true false false false false true false false false false true false false false false false true false false false true false false false false false false false false true false false false true false false false false false true false false false false true false false false true false false false false false false false false true false false false true false false false false true false false false true false false false false false true false false false false true false false false false false false false true false false false false true false false false false false true false false false false true false false false true false false false true false false false false false false false false true false false false false true false false false false true false false false true false false false false false true false false false false false false false false true false false false true false false false true false false false false false true false false false false true false false false true false false false false false false false false true false false false false true false false false false true false false false true false false false false false false true false false false false false false false false true false false false false true false false false true false false false false true false false false false false true false false false false false false false true false false false true false false false false false true false false false false true false false false true false false false false true false false false false false false false false true false false false false false true false false false true false false false true false false false false]).';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T155816_ft_freqanalysis_input_data.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T163119_ft_freqanalysis_output_freq.mat' };
ft_freqanalysis(cfg);

%%

cfg = [];
cfg.method = 'wavelet';
cfg.width = 7;
cfg.foilim = [1 40];
cfg.toi = [-1.5 -1.495 -1.49 -1.485 -1.48 -1.475 -1.47 -1.465 -1.46 -1.455 -1.45 -1.445 -1.44 -1.435 -1.43 -1.425 -1.42 -1.415 -1.41 -1.405 -1.4 -1.395 -1.39 -1.385 -1.38 -1.375 -1.37 -1.365 -1.36 -1.355 -1.35 -1.345 -1.34 -1.335 -1.33 -1.325 -1.32 -1.315 -1.31 -1.305 -1.3 -1.295 -1.29 -1.285 -1.28 -1.275 -1.27 -1.265 -1.26 -1.255 -1.25 -1.245 -1.24 -1.235 -1.23 -1.225 -1.22 -1.215 -1.21 -1.205 -1.2 -1.195 -1.19 -1.185 -1.18 -1.175 -1.17 -1.165 -1.16 -1.155 -1.15 -1.145 -1.14 -1.135 -1.13 -1.125 -1.12 -1.115 -1.11 -1.105 -1.1 -1.095 -1.09 -1.085 -1.08 -1.075 -1.07 -1.065 -1.06 -1.055 -1.05 -1.045 -1.04 -1.035 -1.03 -1.025 -1.02 -1.015 -1.01 -1.005 -1 -0.995 -0.99 -0.985 -0.98 -0.975 -0.97 -0.965 -0.96 -0.955 -0.95 -0.945 -0.94 -0.935 -0.93 -0.925 -0.92 -0.915 -0.91 -0.905 -0.9 -0.895 -0.89 -0.885 -0.88 -0.875 -0.87 -0.865 -0.86 -0.855 -0.85 -0.845 -0.84 -0.835 -0.83 -0.825 -0.82 -0.815 -0.81 -0.805 -0.8 -0.795 -0.79 -0.785 -0.78 -0.775 -0.77 -0.765 -0.76 -0.755 -0.75 -0.745 -0.74 -0.735 -0.73 -0.725 -0.72 -0.715 -0.71 -0.705 -0.7 -0.695 -0.69 -0.685 -0.68 -0.675 -0.67 -0.665 -0.66 -0.655 -0.65 -0.645 -0.64 -0.635 -0.63 -0.625 -0.62 -0.615 -0.61 -0.605 -0.6 -0.595 -0.59 -0.585 -0.58 -0.575 -0.57 -0.565 -0.56 -0.555 -0.55 -0.545 -0.54 -0.535 -0.53 -0.525 -0.52 -0.515 -0.51 -0.505 -0.5 -0.495 -0.49 -0.485 -0.48 -0.475 -0.47 -0.465 -0.46 -0.455 -0.45 -0.445 -0.44 -0.435 -0.43 -0.425 -0.42 -0.415 -0.41 -0.405 -0.4 -0.395 -0.39 -0.385 -0.38 -0.375 -0.37 -0.365 -0.36 -0.355 -0.35 -0.345 -0.34 -0.335 -0.33 -0.325 -0.32 -0.315 -0.31 -0.305 -0.3 -0.295 -0.29 -0.285 -0.28 -0.275 -0.27 -0.265 -0.26 -0.255 -0.25 -0.245 -0.24 -0.235 -0.23 -0.225 -0.22 -0.215 -0.21 -0.205 -0.2 -0.195 -0.19 -0.185 -0.18 -0.175 -0.17 -0.165 -0.16 -0.155 -0.15 -0.145 -0.14 -0.135 -0.13 -0.125 -0.12 -0.115 -0.11 -0.105 -0.0999999999999999 -0.095 -0.0900000000000001 -0.085 -0.0800000000000001 -0.075 -0.0700000000000001 -0.0649999999999999 -0.0600000000000001 -0.0549999999999999 -0.05 -0.0449999999999999 -0.04 -0.0349999999999999 -0.03 -0.0249999999999999 -0.02 -0.0149999999999999 -0.01 -0.00499999999999989 0 0.00499999999999989 0.01 0.0149999999999999 0.02 0.0249999999999999 0.03 0.0349999999999999 0.04 0.0449999999999999 0.05 0.0549999999999999 0.0600000000000001 0.0649999999999999 0.0700000000000001 0.075 0.0800000000000001 0.085 0.0900000000000001 0.095 0.0999999999999999 0.105 0.11 0.115 0.12 0.125 0.13 0.135 0.14 0.145 0.15 0.155 0.16 0.165 0.17 0.175 0.18 0.185 0.19 0.195 0.2 0.205 0.21 0.215 0.22 0.225 0.23 0.235 0.24 0.245 0.25 0.255 0.26 0.265 0.27 0.275 0.28 0.285 0.29 0.295 0.3 0.305 0.31 0.315 0.32 0.325 0.33 0.335 0.34 0.345 0.35 0.355 0.36 0.365 0.37 0.375 0.38 0.385 0.39 0.395 0.4 0.405 0.41 0.415 0.42 0.425 0.43 0.435 0.44 0.445 0.45 0.455 0.46 0.465 0.47 0.475 0.48 0.485 0.49 0.495 0.5 0.505 0.51 0.515 0.52 0.525 0.53 0.535 0.54 0.545 0.55 0.555 0.56 0.565 0.57 0.575 0.58 0.585 0.59 0.595 0.6 0.605 0.61 0.615 0.62 0.625 0.63 0.635 0.64 0.645 0.65 0.655 0.66 0.665 0.67 0.675 0.68 0.685 0.69 0.695 0.7 0.705 0.71 0.715 0.72 0.725 0.73 0.735 0.74 0.745 0.75 0.755 0.76 0.765 0.77 0.775 0.78 0.785 0.79 0.795 0.8 0.805 0.81 0.815 0.82 0.825 0.83 0.835 0.84 0.845 0.85 0.855 0.86 0.865 0.87 0.875 0.88 0.885 0.89 0.895 0.9 0.905 0.91 0.915 0.92 0.925 0.93 0.935 0.94 0.945 0.95 0.955 0.96 0.965 0.97 0.975 0.98 0.985 0.99 0.995 1 1.005 1.01 1.015 1.02 1.025 1.03 1.035 1.04 1.045 1.05 1.055 1.06 1.065 1.07 1.075 1.08 1.085 1.09 1.095 1.1 1.105 1.11 1.115 1.12 1.125 1.13 1.135 1.14 1.145 1.15 1.155 1.16 1.165 1.17 1.175 1.18 1.185 1.19 1.195 1.2 1.205 1.21 1.215 1.22 1.225 1.23 1.235 1.24 1.245 1.25 1.255 1.26 1.265 1.27 1.275 1.28 1.285 1.29 1.295 1.3 1.305 1.31 1.315 1.32 1.325 1.33 1.335 1.34 1.345 1.35 1.355 1.36 1.365 1.37 1.375 1.38 1.385 1.39 1.395 1.4 1.405 1.41 1.415 1.42 1.425 1.43 1.435 1.44 1.445 1.45 1.455 1.46 1.465 1.47 1.475 1.48 1.485 1.49 1.495 1.5];
cfg.pad = 'nextpow2';
cfg.events = {
 1, 2, 3, 13, 14, 15, 21
};
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.trials = logical([false false true false false false false true false false false false true false false false true false false false true false false false false false true false false false false false false false false true false false false false false true false false false true false false false true false false false false false true false false false false false false false true false false false false true false false false true false false false false false true false false false false true false false false false false false false false true false false false false true false false false true false false false true false false false false true false false false false false true false false false false false false false true false false false true false false false false false true false false false false true false false false true false false false false true false false false false false false true false false false false false true false false false false false true false false false false true false false false false false true false false false false false false true false false false false false true false false false true false false false false true false false false false true false false false true false false false false false false true false false false false false true false false false false false true false false false false true false false false false false true false false false false false false true false false false false true false false false false false true false false true false false false false true false false false true false false false false false false true false false false false false true false false false false true false false false false false true false false false false true false false false false false false false false false true false false false false true false false false true false false false false true false false false true false false false false false true false false false false false false true false false false false false true false false false false true false false false true false false false false false true false false false false false false false true false false false false false true false false false true false false false true false false false false true false false false false false false false false true false false false false true false false false true false false false false false true false false false false true false false false false false false false true false false false true false false false false false true false false true false false false false false true false false false true false false false false false false false true false false false false false true false false false false true false false false false true false false false true false false false false false false false false true false false false false true false false false false true false false false true false false false true false false false true false false false false false false false false true false false false false false true false false false false true false false false false true false false false false true false false false false false false false false true false false false false true false false false true false false false true false false false false false true false false false true false false false false false false false true false false false true false false false false true false false false false false true false false false false false true false false false false false false false true false false false false false true false false false true false false false false true false false false false false true false false false false false false true false false false false true false false false true false false false false false true false false false false false true false false false false false false false true false false false true false false false false true false false false false true false false false true false false false true false false false false false false false false true false false false false false true false false false false false true false false false false true false false false false false true false false false false false false false true false false false true false false false true false false false false true false false false true false false false true false false false false false false true false false false false false true false false false false false true false false false true false false false false false true false false false false false false true false false false false false true false false false false true false false false false true false false false true false false false false false false false false true false false false false true false false false false true false false false false false true false false false true false false false false false false false false true false false false true false false false false false true false false false false true false false false true false false false false false false false false true false false false true false false false false true false false false true false false false false false true false false false false true false false false false false false false true false false false false true false false false false false true false false false false true false false false true false false false true false false false false false false false false true false false false false true false false false false true false false false true false false false false false true false false false false false false false false true false false false true false false false true false false false false false true false false false false true false false false true false false false false false false false false true false false false false true false false false false true false false false true false false false false false false true false false false false false false false false true false false false false true false false false true false false false false true false false false false false true false false false false false false false true false false false true false false false false false true false false false false true false false false true false false false false true false false false false false false false false true false false false false false true false false false true false false false true false false false]).';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T155816_ft_freqanalysis_input_data.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T164709_ft_freqanalysis_output_freq.mat' };
ft_freqanalysis(cfg);

%%

cfg = [];
cfg.method = 'wavelet';
cfg.width = 7;
cfg.foilim = [1 40];
cfg.toi = [-1.5 -1.495 -1.49 -1.485 -1.48 -1.475 -1.47 -1.465 -1.46 -1.455 -1.45 -1.445 -1.44 -1.435 -1.43 -1.425 -1.42 -1.415 -1.41 -1.405 -1.4 -1.395 -1.39 -1.385 -1.38 -1.375 -1.37 -1.365 -1.36 -1.355 -1.35 -1.345 -1.34 -1.335 -1.33 -1.325 -1.32 -1.315 -1.31 -1.305 -1.3 -1.295 -1.29 -1.285 -1.28 -1.275 -1.27 -1.265 -1.26 -1.255 -1.25 -1.245 -1.24 -1.235 -1.23 -1.225 -1.22 -1.215 -1.21 -1.205 -1.2 -1.195 -1.19 -1.185 -1.18 -1.175 -1.17 -1.165 -1.16 -1.155 -1.15 -1.145 -1.14 -1.135 -1.13 -1.125 -1.12 -1.115 -1.11 -1.105 -1.1 -1.095 -1.09 -1.085 -1.08 -1.075 -1.07 -1.065 -1.06 -1.055 -1.05 -1.045 -1.04 -1.035 -1.03 -1.025 -1.02 -1.015 -1.01 -1.005 -1 -0.995 -0.99 -0.985 -0.98 -0.975 -0.97 -0.965 -0.96 -0.955 -0.95 -0.945 -0.94 -0.935 -0.93 -0.925 -0.92 -0.915 -0.91 -0.905 -0.9 -0.895 -0.89 -0.885 -0.88 -0.875 -0.87 -0.865 -0.86 -0.855 -0.85 -0.845 -0.84 -0.835 -0.83 -0.825 -0.82 -0.815 -0.81 -0.805 -0.8 -0.795 -0.79 -0.785 -0.78 -0.775 -0.77 -0.765 -0.76 -0.755 -0.75 -0.745 -0.74 -0.735 -0.73 -0.725 -0.72 -0.715 -0.71 -0.705 -0.7 -0.695 -0.69 -0.685 -0.68 -0.675 -0.67 -0.665 -0.66 -0.655 -0.65 -0.645 -0.64 -0.635 -0.63 -0.625 -0.62 -0.615 -0.61 -0.605 -0.6 -0.595 -0.59 -0.585 -0.58 -0.575 -0.57 -0.565 -0.56 -0.555 -0.55 -0.545 -0.54 -0.535 -0.53 -0.525 -0.52 -0.515 -0.51 -0.505 -0.5 -0.495 -0.49 -0.485 -0.48 -0.475 -0.47 -0.465 -0.46 -0.455 -0.45 -0.445 -0.44 -0.435 -0.43 -0.425 -0.42 -0.415 -0.41 -0.405 -0.4 -0.395 -0.39 -0.385 -0.38 -0.375 -0.37 -0.365 -0.36 -0.355 -0.35 -0.345 -0.34 -0.335 -0.33 -0.325 -0.32 -0.315 -0.31 -0.305 -0.3 -0.295 -0.29 -0.285 -0.28 -0.275 -0.27 -0.265 -0.26 -0.255 -0.25 -0.245 -0.24 -0.235 -0.23 -0.225 -0.22 -0.215 -0.21 -0.205 -0.2 -0.195 -0.19 -0.185 -0.18 -0.175 -0.17 -0.165 -0.16 -0.155 -0.15 -0.145 -0.14 -0.135 -0.13 -0.125 -0.12 -0.115 -0.11 -0.105 -0.0999999999999999 -0.095 -0.0900000000000001 -0.085 -0.0800000000000001 -0.075 -0.0700000000000001 -0.0649999999999999 -0.0600000000000001 -0.0549999999999999 -0.05 -0.0449999999999999 -0.04 -0.0349999999999999 -0.03 -0.0249999999999999 -0.02 -0.0149999999999999 -0.01 -0.00499999999999989 0 0.00499999999999989 0.01 0.0149999999999999 0.02 0.0249999999999999 0.03 0.0349999999999999 0.04 0.0449999999999999 0.05 0.0549999999999999 0.0600000000000001 0.0649999999999999 0.0700000000000001 0.075 0.0800000000000001 0.085 0.0900000000000001 0.095 0.0999999999999999 0.105 0.11 0.115 0.12 0.125 0.13 0.135 0.14 0.145 0.15 0.155 0.16 0.165 0.17 0.175 0.18 0.185 0.19 0.195 0.2 0.205 0.21 0.215 0.22 0.225 0.23 0.235 0.24 0.245 0.25 0.255 0.26 0.265 0.27 0.275 0.28 0.285 0.29 0.295 0.3 0.305 0.31 0.315 0.32 0.325 0.33 0.335 0.34 0.345 0.35 0.355 0.36 0.365 0.37 0.375 0.38 0.385 0.39 0.395 0.4 0.405 0.41 0.415 0.42 0.425 0.43 0.435 0.44 0.445 0.45 0.455 0.46 0.465 0.47 0.475 0.48 0.485 0.49 0.495 0.5 0.505 0.51 0.515 0.52 0.525 0.53 0.535 0.54 0.545 0.55 0.555 0.56 0.565 0.57 0.575 0.58 0.585 0.59 0.595 0.6 0.605 0.61 0.615 0.62 0.625 0.63 0.635 0.64 0.645 0.65 0.655 0.66 0.665 0.67 0.675 0.68 0.685 0.69 0.695 0.7 0.705 0.71 0.715 0.72 0.725 0.73 0.735 0.74 0.745 0.75 0.755 0.76 0.765 0.77 0.775 0.78 0.785 0.79 0.795 0.8 0.805 0.81 0.815 0.82 0.825 0.83 0.835 0.84 0.845 0.85 0.855 0.86 0.865 0.87 0.875 0.88 0.885 0.89 0.895 0.9 0.905 0.91 0.915 0.92 0.925 0.93 0.935 0.94 0.945 0.95 0.955 0.96 0.965 0.97 0.975 0.98 0.985 0.99 0.995 1 1.005 1.01 1.015 1.02 1.025 1.03 1.035 1.04 1.045 1.05 1.055 1.06 1.065 1.07 1.075 1.08 1.085 1.09 1.095 1.1 1.105 1.11 1.115 1.12 1.125 1.13 1.135 1.14 1.145 1.15 1.155 1.16 1.165 1.17 1.175 1.18 1.185 1.19 1.195 1.2 1.205 1.21 1.215 1.22 1.225 1.23 1.235 1.24 1.245 1.25 1.255 1.26 1.265 1.27 1.275 1.28 1.285 1.29 1.295 1.3 1.305 1.31 1.315 1.32 1.325 1.33 1.335 1.34 1.345 1.35 1.355 1.36 1.365 1.37 1.375 1.38 1.385 1.39 1.395 1.4 1.405 1.41 1.415 1.42 1.425 1.43 1.435 1.44 1.445 1.45 1.455 1.46 1.465 1.47 1.475 1.48 1.485 1.49 1.495 1.5];
cfg.pad = 'nextpow2';
cfg.events = {
 1, 2, 3, 13, 14, 15, 21
};
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.trials = logical([false false false false false false false false false false false false false true false false false true false false false false false false false false false false false false false false false false false false false false false false false false true false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false true false false false false false false false false false false false false false true false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false true false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false true false false false false false false false false false true false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false true false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false true false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false true false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false true false false false false false false false false false true false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false true false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false true false false false false false false false false true false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false true false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false true false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false true false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false true false false false true false false false false false false]).';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T155816_ft_freqanalysis_input_data.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T165242_ft_freqanalysis_output_freq.mat' };
ft_freqanalysis(cfg);

%%

cfg = [];
cfg.method = 'wavelet';
cfg.width = 7;
cfg.foilim = [1 40];
cfg.toi = [-1.5 -1.495 -1.49 -1.485 -1.48 -1.475 -1.47 -1.465 -1.46 -1.455 -1.45 -1.445 -1.44 -1.435 -1.43 -1.425 -1.42 -1.415 -1.41 -1.405 -1.4 -1.395 -1.39 -1.385 -1.38 -1.375 -1.37 -1.365 -1.36 -1.355 -1.35 -1.345 -1.34 -1.335 -1.33 -1.325 -1.32 -1.315 -1.31 -1.305 -1.3 -1.295 -1.29 -1.285 -1.28 -1.275 -1.27 -1.265 -1.26 -1.255 -1.25 -1.245 -1.24 -1.235 -1.23 -1.225 -1.22 -1.215 -1.21 -1.205 -1.2 -1.195 -1.19 -1.185 -1.18 -1.175 -1.17 -1.165 -1.16 -1.155 -1.15 -1.145 -1.14 -1.135 -1.13 -1.125 -1.12 -1.115 -1.11 -1.105 -1.1 -1.095 -1.09 -1.085 -1.08 -1.075 -1.07 -1.065 -1.06 -1.055 -1.05 -1.045 -1.04 -1.035 -1.03 -1.025 -1.02 -1.015 -1.01 -1.005 -1 -0.995 -0.99 -0.985 -0.98 -0.975 -0.97 -0.965 -0.96 -0.955 -0.95 -0.945 -0.94 -0.935 -0.93 -0.925 -0.92 -0.915 -0.91 -0.905 -0.9 -0.895 -0.89 -0.885 -0.88 -0.875 -0.87 -0.865 -0.86 -0.855 -0.85 -0.845 -0.84 -0.835 -0.83 -0.825 -0.82 -0.815 -0.81 -0.805 -0.8 -0.795 -0.79 -0.785 -0.78 -0.775 -0.77 -0.765 -0.76 -0.755 -0.75 -0.745 -0.74 -0.735 -0.73 -0.725 -0.72 -0.715 -0.71 -0.705 -0.7 -0.695 -0.69 -0.685 -0.68 -0.675 -0.67 -0.665 -0.66 -0.655 -0.65 -0.645 -0.64 -0.635 -0.63 -0.625 -0.62 -0.615 -0.61 -0.605 -0.6 -0.595 -0.59 -0.585 -0.58 -0.575 -0.57 -0.565 -0.56 -0.555 -0.55 -0.545 -0.54 -0.535 -0.53 -0.525 -0.52 -0.515 -0.51 -0.505 -0.5 -0.495 -0.49 -0.485 -0.48 -0.475 -0.47 -0.465 -0.46 -0.455 -0.45 -0.445 -0.44 -0.435 -0.43 -0.425 -0.42 -0.415 -0.41 -0.405 -0.4 -0.395 -0.39 -0.385 -0.38 -0.375 -0.37 -0.365 -0.36 -0.355 -0.35 -0.345 -0.34 -0.335 -0.33 -0.325 -0.32 -0.315 -0.31 -0.305 -0.3 -0.295 -0.29 -0.285 -0.28 -0.275 -0.27 -0.265 -0.26 -0.255 -0.25 -0.245 -0.24 -0.235 -0.23 -0.225 -0.22 -0.215 -0.21 -0.205 -0.2 -0.195 -0.19 -0.185 -0.18 -0.175 -0.17 -0.165 -0.16 -0.155 -0.15 -0.145 -0.14 -0.135 -0.13 -0.125 -0.12 -0.115 -0.11 -0.105 -0.0999999999999999 -0.095 -0.0900000000000001 -0.085 -0.0800000000000001 -0.075 -0.0700000000000001 -0.0649999999999999 -0.0600000000000001 -0.0549999999999999 -0.05 -0.0449999999999999 -0.04 -0.0349999999999999 -0.03 -0.0249999999999999 -0.02 -0.0149999999999999 -0.01 -0.00499999999999989 0 0.00499999999999989 0.01 0.0149999999999999 0.02 0.0249999999999999 0.03 0.0349999999999999 0.04 0.0449999999999999 0.05 0.0549999999999999 0.0600000000000001 0.0649999999999999 0.0700000000000001 0.075 0.0800000000000001 0.085 0.0900000000000001 0.095 0.0999999999999999 0.105 0.11 0.115 0.12 0.125 0.13 0.135 0.14 0.145 0.15 0.155 0.16 0.165 0.17 0.175 0.18 0.185 0.19 0.195 0.2 0.205 0.21 0.215 0.22 0.225 0.23 0.235 0.24 0.245 0.25 0.255 0.26 0.265 0.27 0.275 0.28 0.285 0.29 0.295 0.3 0.305 0.31 0.315 0.32 0.325 0.33 0.335 0.34 0.345 0.35 0.355 0.36 0.365 0.37 0.375 0.38 0.385 0.39 0.395 0.4 0.405 0.41 0.415 0.42 0.425 0.43 0.435 0.44 0.445 0.45 0.455 0.46 0.465 0.47 0.475 0.48 0.485 0.49 0.495 0.5 0.505 0.51 0.515 0.52 0.525 0.53 0.535 0.54 0.545 0.55 0.555 0.56 0.565 0.57 0.575 0.58 0.585 0.59 0.595 0.6 0.605 0.61 0.615 0.62 0.625 0.63 0.635 0.64 0.645 0.65 0.655 0.66 0.665 0.67 0.675 0.68 0.685 0.69 0.695 0.7 0.705 0.71 0.715 0.72 0.725 0.73 0.735 0.74 0.745 0.75 0.755 0.76 0.765 0.77 0.775 0.78 0.785 0.79 0.795 0.8 0.805 0.81 0.815 0.82 0.825 0.83 0.835 0.84 0.845 0.85 0.855 0.86 0.865 0.87 0.875 0.88 0.885 0.89 0.895 0.9 0.905 0.91 0.915 0.92 0.925 0.93 0.935 0.94 0.945 0.95 0.955 0.96 0.965 0.97 0.975 0.98 0.985 0.99 0.995 1 1.005 1.01 1.015 1.02 1.025 1.03 1.035 1.04 1.045 1.05 1.055 1.06 1.065 1.07 1.075 1.08 1.085 1.09 1.095 1.1 1.105 1.11 1.115 1.12 1.125 1.13 1.135 1.14 1.145 1.15 1.155 1.16 1.165 1.17 1.175 1.18 1.185 1.19 1.195 1.2 1.205 1.21 1.215 1.22 1.225 1.23 1.235 1.24 1.245 1.25 1.255 1.26 1.265 1.27 1.275 1.28 1.285 1.29 1.295 1.3 1.305 1.31 1.315 1.32 1.325 1.33 1.335 1.34 1.345 1.35 1.355 1.36 1.365 1.37 1.375 1.38 1.385 1.39 1.395 1.4 1.405 1.41 1.415 1.42 1.425 1.43 1.435 1.44 1.445 1.45 1.455 1.46 1.465 1.47 1.475 1.48 1.485 1.49 1.495 1.5];
cfg.pad = 'nextpow2';
cfg.events = {
 1, 2, 3, 13, 14, 15, 21
};
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.trials = logical([false false false false true false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false false true false false false false false false false false false false false false true false false false false false false false false false false true false false false false false false false false false false false false false false false false false true false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false true false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false true false false false false true false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false true false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false true false false false false false false false false false false false false false false false true false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false true false false false false false false false false false false false false false false false false false true false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false true false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false true false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false true false false false false true false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false true false false false false false false false false false false false false false false false false false true false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false true false]).';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T155816_ft_freqanalysis_input_data.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T165818_ft_freqanalysis_output_freq.mat' };
ft_freqanalysis(cfg);

%%

cfg = [];
cfg.method = 'wavelet';
cfg.width = 7;
cfg.foilim = [1 40];
cfg.toi = [-1.5 -1.495 -1.49 -1.485 -1.48 -1.475 -1.47 -1.465 -1.46 -1.455 -1.45 -1.445 -1.44 -1.435 -1.43 -1.425 -1.42 -1.415 -1.41 -1.405 -1.4 -1.395 -1.39 -1.385 -1.38 -1.375 -1.37 -1.365 -1.36 -1.355 -1.35 -1.345 -1.34 -1.335 -1.33 -1.325 -1.32 -1.315 -1.31 -1.305 -1.3 -1.295 -1.29 -1.285 -1.28 -1.275 -1.27 -1.265 -1.26 -1.255 -1.25 -1.245 -1.24 -1.235 -1.23 -1.225 -1.22 -1.215 -1.21 -1.205 -1.2 -1.195 -1.19 -1.185 -1.18 -1.175 -1.17 -1.165 -1.16 -1.155 -1.15 -1.145 -1.14 -1.135 -1.13 -1.125 -1.12 -1.115 -1.11 -1.105 -1.1 -1.095 -1.09 -1.085 -1.08 -1.075 -1.07 -1.065 -1.06 -1.055 -1.05 -1.045 -1.04 -1.035 -1.03 -1.025 -1.02 -1.015 -1.01 -1.005 -1 -0.995 -0.99 -0.985 -0.98 -0.975 -0.97 -0.965 -0.96 -0.955 -0.95 -0.945 -0.94 -0.935 -0.93 -0.925 -0.92 -0.915 -0.91 -0.905 -0.9 -0.895 -0.89 -0.885 -0.88 -0.875 -0.87 -0.865 -0.86 -0.855 -0.85 -0.845 -0.84 -0.835 -0.83 -0.825 -0.82 -0.815 -0.81 -0.805 -0.8 -0.795 -0.79 -0.785 -0.78 -0.775 -0.77 -0.765 -0.76 -0.755 -0.75 -0.745 -0.74 -0.735 -0.73 -0.725 -0.72 -0.715 -0.71 -0.705 -0.7 -0.695 -0.69 -0.685 -0.68 -0.675 -0.67 -0.665 -0.66 -0.655 -0.65 -0.645 -0.64 -0.635 -0.63 -0.625 -0.62 -0.615 -0.61 -0.605 -0.6 -0.595 -0.59 -0.585 -0.58 -0.575 -0.57 -0.565 -0.56 -0.555 -0.55 -0.545 -0.54 -0.535 -0.53 -0.525 -0.52 -0.515 -0.51 -0.505 -0.5 -0.495 -0.49 -0.485 -0.48 -0.475 -0.47 -0.465 -0.46 -0.455 -0.45 -0.445 -0.44 -0.435 -0.43 -0.425 -0.42 -0.415 -0.41 -0.405 -0.4 -0.395 -0.39 -0.385 -0.38 -0.375 -0.37 -0.365 -0.36 -0.355 -0.35 -0.345 -0.34 -0.335 -0.33 -0.325 -0.32 -0.315 -0.31 -0.305 -0.3 -0.295 -0.29 -0.285 -0.28 -0.275 -0.27 -0.265 -0.26 -0.255 -0.25 -0.245 -0.24 -0.235 -0.23 -0.225 -0.22 -0.215 -0.21 -0.205 -0.2 -0.195 -0.19 -0.185 -0.18 -0.175 -0.17 -0.165 -0.16 -0.155 -0.15 -0.145 -0.14 -0.135 -0.13 -0.125 -0.12 -0.115 -0.11 -0.105 -0.0999999999999999 -0.095 -0.0900000000000001 -0.085 -0.0800000000000001 -0.075 -0.0700000000000001 -0.0649999999999999 -0.0600000000000001 -0.0549999999999999 -0.05 -0.0449999999999999 -0.04 -0.0349999999999999 -0.03 -0.0249999999999999 -0.02 -0.0149999999999999 -0.01 -0.00499999999999989 0 0.00499999999999989 0.01 0.0149999999999999 0.02 0.0249999999999999 0.03 0.0349999999999999 0.04 0.0449999999999999 0.05 0.0549999999999999 0.0600000000000001 0.0649999999999999 0.0700000000000001 0.075 0.0800000000000001 0.085 0.0900000000000001 0.095 0.0999999999999999 0.105 0.11 0.115 0.12 0.125 0.13 0.135 0.14 0.145 0.15 0.155 0.16 0.165 0.17 0.175 0.18 0.185 0.19 0.195 0.2 0.205 0.21 0.215 0.22 0.225 0.23 0.235 0.24 0.245 0.25 0.255 0.26 0.265 0.27 0.275 0.28 0.285 0.29 0.295 0.3 0.305 0.31 0.315 0.32 0.325 0.33 0.335 0.34 0.345 0.35 0.355 0.36 0.365 0.37 0.375 0.38 0.385 0.39 0.395 0.4 0.405 0.41 0.415 0.42 0.425 0.43 0.435 0.44 0.445 0.45 0.455 0.46 0.465 0.47 0.475 0.48 0.485 0.49 0.495 0.5 0.505 0.51 0.515 0.52 0.525 0.53 0.535 0.54 0.545 0.55 0.555 0.56 0.565 0.57 0.575 0.58 0.585 0.59 0.595 0.6 0.605 0.61 0.615 0.62 0.625 0.63 0.635 0.64 0.645 0.65 0.655 0.66 0.665 0.67 0.675 0.68 0.685 0.69 0.695 0.7 0.705 0.71 0.715 0.72 0.725 0.73 0.735 0.74 0.745 0.75 0.755 0.76 0.765 0.77 0.775 0.78 0.785 0.79 0.795 0.8 0.805 0.81 0.815 0.82 0.825 0.83 0.835 0.84 0.845 0.85 0.855 0.86 0.865 0.87 0.875 0.88 0.885 0.89 0.895 0.9 0.905 0.91 0.915 0.92 0.925 0.93 0.935 0.94 0.945 0.95 0.955 0.96 0.965 0.97 0.975 0.98 0.985 0.99 0.995 1 1.005 1.01 1.015 1.02 1.025 1.03 1.035 1.04 1.045 1.05 1.055 1.06 1.065 1.07 1.075 1.08 1.085 1.09 1.095 1.1 1.105 1.11 1.115 1.12 1.125 1.13 1.135 1.14 1.145 1.15 1.155 1.16 1.165 1.17 1.175 1.18 1.185 1.19 1.195 1.2 1.205 1.21 1.215 1.22 1.225 1.23 1.235 1.24 1.245 1.25 1.255 1.26 1.265 1.27 1.275 1.28 1.285 1.29 1.295 1.3 1.305 1.31 1.315 1.32 1.325 1.33 1.335 1.34 1.345 1.35 1.355 1.36 1.365 1.37 1.375 1.38 1.385 1.39 1.395 1.4 1.405 1.41 1.415 1.42 1.425 1.43 1.435 1.44 1.445 1.45 1.455 1.46 1.465 1.47 1.475 1.48 1.485 1.49 1.495 1.5];
cfg.pad = 'nextpow2';
cfg.events = {
 1, 2, 3, 13, 14, 15, 21
};
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.trials = logical([false false false false false false false false false false false false false false false false false false false false false false false true false false false false false true false false false false false false false false true false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false true false false false false false false false false false false true false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false true false false false false false false false false false false true false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false true false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false true false false false false true false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false true false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false true false false false false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false true false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false true false false false false false true false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false true false false false false false false false false false true false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false true false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false true false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false true false false false false false false false false true false false false false false false false false false false false false false false]).';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T155816_ft_freqanalysis_input_data.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T170350_ft_freqanalysis_output_freq.mat' };
ft_freqanalysis(cfg);

%%

cfg = [];
cfg.method = 'wavelet';
cfg.width = 7;
cfg.foilim = [1 40];
cfg.toi = [-1.5 -1.495 -1.49 -1.485 -1.48 -1.475 -1.47 -1.465 -1.46 -1.455 -1.45 -1.445 -1.44 -1.435 -1.43 -1.425 -1.42 -1.415 -1.41 -1.405 -1.4 -1.395 -1.39 -1.385 -1.38 -1.375 -1.37 -1.365 -1.36 -1.355 -1.35 -1.345 -1.34 -1.335 -1.33 -1.325 -1.32 -1.315 -1.31 -1.305 -1.3 -1.295 -1.29 -1.285 -1.28 -1.275 -1.27 -1.265 -1.26 -1.255 -1.25 -1.245 -1.24 -1.235 -1.23 -1.225 -1.22 -1.215 -1.21 -1.205 -1.2 -1.195 -1.19 -1.185 -1.18 -1.175 -1.17 -1.165 -1.16 -1.155 -1.15 -1.145 -1.14 -1.135 -1.13 -1.125 -1.12 -1.115 -1.11 -1.105 -1.1 -1.095 -1.09 -1.085 -1.08 -1.075 -1.07 -1.065 -1.06 -1.055 -1.05 -1.045 -1.04 -1.035 -1.03 -1.025 -1.02 -1.015 -1.01 -1.005 -1 -0.995 -0.99 -0.985 -0.98 -0.975 -0.97 -0.965 -0.96 -0.955 -0.95 -0.945 -0.94 -0.935 -0.93 -0.925 -0.92 -0.915 -0.91 -0.905 -0.9 -0.895 -0.89 -0.885 -0.88 -0.875 -0.87 -0.865 -0.86 -0.855 -0.85 -0.845 -0.84 -0.835 -0.83 -0.825 -0.82 -0.815 -0.81 -0.805 -0.8 -0.795 -0.79 -0.785 -0.78 -0.775 -0.77 -0.765 -0.76 -0.755 -0.75 -0.745 -0.74 -0.735 -0.73 -0.725 -0.72 -0.715 -0.71 -0.705 -0.7 -0.695 -0.69 -0.685 -0.68 -0.675 -0.67 -0.665 -0.66 -0.655 -0.65 -0.645 -0.64 -0.635 -0.63 -0.625 -0.62 -0.615 -0.61 -0.605 -0.6 -0.595 -0.59 -0.585 -0.58 -0.575 -0.57 -0.565 -0.56 -0.555 -0.55 -0.545 -0.54 -0.535 -0.53 -0.525 -0.52 -0.515 -0.51 -0.505 -0.5 -0.495 -0.49 -0.485 -0.48 -0.475 -0.47 -0.465 -0.46 -0.455 -0.45 -0.445 -0.44 -0.435 -0.43 -0.425 -0.42 -0.415 -0.41 -0.405 -0.4 -0.395 -0.39 -0.385 -0.38 -0.375 -0.37 -0.365 -0.36 -0.355 -0.35 -0.345 -0.34 -0.335 -0.33 -0.325 -0.32 -0.315 -0.31 -0.305 -0.3 -0.295 -0.29 -0.285 -0.28 -0.275 -0.27 -0.265 -0.26 -0.255 -0.25 -0.245 -0.24 -0.235 -0.23 -0.225 -0.22 -0.215 -0.21 -0.205 -0.2 -0.195 -0.19 -0.185 -0.18 -0.175 -0.17 -0.165 -0.16 -0.155 -0.15 -0.145 -0.14 -0.135 -0.13 -0.125 -0.12 -0.115 -0.11 -0.105 -0.0999999999999999 -0.095 -0.0900000000000001 -0.085 -0.0800000000000001 -0.075 -0.0700000000000001 -0.0649999999999999 -0.0600000000000001 -0.0549999999999999 -0.05 -0.0449999999999999 -0.04 -0.0349999999999999 -0.03 -0.0249999999999999 -0.02 -0.0149999999999999 -0.01 -0.00499999999999989 0 0.00499999999999989 0.01 0.0149999999999999 0.02 0.0249999999999999 0.03 0.0349999999999999 0.04 0.0449999999999999 0.05 0.0549999999999999 0.0600000000000001 0.0649999999999999 0.0700000000000001 0.075 0.0800000000000001 0.085 0.0900000000000001 0.095 0.0999999999999999 0.105 0.11 0.115 0.12 0.125 0.13 0.135 0.14 0.145 0.15 0.155 0.16 0.165 0.17 0.175 0.18 0.185 0.19 0.195 0.2 0.205 0.21 0.215 0.22 0.225 0.23 0.235 0.24 0.245 0.25 0.255 0.26 0.265 0.27 0.275 0.28 0.285 0.29 0.295 0.3 0.305 0.31 0.315 0.32 0.325 0.33 0.335 0.34 0.345 0.35 0.355 0.36 0.365 0.37 0.375 0.38 0.385 0.39 0.395 0.4 0.405 0.41 0.415 0.42 0.425 0.43 0.435 0.44 0.445 0.45 0.455 0.46 0.465 0.47 0.475 0.48 0.485 0.49 0.495 0.5 0.505 0.51 0.515 0.52 0.525 0.53 0.535 0.54 0.545 0.55 0.555 0.56 0.565 0.57 0.575 0.58 0.585 0.59 0.595 0.6 0.605 0.61 0.615 0.62 0.625 0.63 0.635 0.64 0.645 0.65 0.655 0.66 0.665 0.67 0.675 0.68 0.685 0.69 0.695 0.7 0.705 0.71 0.715 0.72 0.725 0.73 0.735 0.74 0.745 0.75 0.755 0.76 0.765 0.77 0.775 0.78 0.785 0.79 0.795 0.8 0.805 0.81 0.815 0.82 0.825 0.83 0.835 0.84 0.845 0.85 0.855 0.86 0.865 0.87 0.875 0.88 0.885 0.89 0.895 0.9 0.905 0.91 0.915 0.92 0.925 0.93 0.935 0.94 0.945 0.95 0.955 0.96 0.965 0.97 0.975 0.98 0.985 0.99 0.995 1 1.005 1.01 1.015 1.02 1.025 1.03 1.035 1.04 1.045 1.05 1.055 1.06 1.065 1.07 1.075 1.08 1.085 1.09 1.095 1.1 1.105 1.11 1.115 1.12 1.125 1.13 1.135 1.14 1.145 1.15 1.155 1.16 1.165 1.17 1.175 1.18 1.185 1.19 1.195 1.2 1.205 1.21 1.215 1.22 1.225 1.23 1.235 1.24 1.245 1.25 1.255 1.26 1.265 1.27 1.275 1.28 1.285 1.29 1.295 1.3 1.305 1.31 1.315 1.32 1.325 1.33 1.335 1.34 1.345 1.35 1.355 1.36 1.365 1.37 1.375 1.38 1.385 1.39 1.395 1.4 1.405 1.41 1.415 1.42 1.425 1.43 1.435 1.44 1.445 1.45 1.455 1.46 1.465 1.47 1.475 1.48 1.485 1.49 1.495 1.5];
cfg.pad = 'nextpow2';
cfg.events = {
 1, 2, 3, 13, 14, 15, 21
};
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.trials = logical([false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false true true false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false]).';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T155816_ft_freqanalysis_input_data.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171235_ft_freqanalysis_output_freq.mat' };
ft_freqanalysis(cfg);

%%

cfg = [];
cfg.events = {
 1, 2, 3, 13, 14, 15, 21
};
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T161544_ft_freqanalysis_output_freq.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171444_ft_combineplanar_output_data.mat' };
ft_combineplanar(cfg);

%%

cfg = [];
cfg.events = {
 1, 2, 3, 13, 14, 15, 21
};
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T163119_ft_freqanalysis_output_freq.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171450_ft_combineplanar_output_data.mat' };
ft_combineplanar(cfg);

%%

cfg = [];
cfg.events = {
 1, 2, 3, 13, 14, 15, 21
};
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T164709_ft_freqanalysis_output_freq.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171457_ft_combineplanar_output_data.mat' };
ft_combineplanar(cfg);

%%

cfg = [];
cfg.events = {
 1, 2, 3, 13, 14, 15, 21
};
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T165242_ft_freqanalysis_output_freq.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171503_ft_combineplanar_output_data.mat' };
ft_combineplanar(cfg);

%%

cfg = [];
cfg.events = {
 1, 2, 3, 13, 14, 15, 21
};
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T165818_ft_freqanalysis_output_freq.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171509_ft_combineplanar_output_data.mat' };
ft_combineplanar(cfg);

%%

cfg = [];
cfg.events = {
 1, 2, 3, 13, 14, 15, 21
};
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T170350_ft_freqanalysis_output_freq.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171516_ft_combineplanar_output_data.mat' };
ft_combineplanar(cfg);

%%

cfg = [];
cfg.events = {
 1, 2, 3, 13, 14, 15, 21
};
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171235_ft_freqanalysis_output_freq.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171522_ft_combineplanar_output_data.mat' };
ft_combineplanar(cfg);

%%

cfg = [];
cfg.warpmni = 'yes';
cfg.template = '/project_qnap/3010000.02/reproducescript/andersen/fieldtrip/template/sourcemodel/standard_sourcemodel3d10mm.mat';
cfg.nonlinear = 'yes';
cfg.unit = 'mm';
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.mri = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171740_ft_prepare_sourcemodel_largecfginput_mri.mat';
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171740_ft_prepare_sourcemodel_output_sourcemodel.mat' };
ft_prepare_sourcemodel(cfg);

%%

cfg = [];
cfg.channel = { 'MEGGRAD' };
cfg.sensors_file = 'oddball_absence-tsss-mc_meg.fif';
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.grad = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171819_ft_prepare_leadfield_largecfginput_grad.mat';
cfg.grid = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171740_ft_prepare_sourcemodel_output_sourcemodel.mat';
cfg.headmodel = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171819_ft_prepare_leadfield_largecfginput_headmodel.mat';
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171819_ft_prepare_leadfield_output_sourcemodel.mat' };
ft_prepare_leadfield(cfg);

%%

cfg = [];
cfg.events = {
 1, 2, 3, 13, 14, 15, 21
};
cfg.redefine_trial.toilim = [0.8 1.2];
cfg.select_data.channel = 'MEGGRAD';
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.trials = logical([true false false false false true false false false false true false false false true false false false true false false false false false true false false false false false false false false true false false false false false true false false false true false false false true false false false false false true false false false false false false false true false false false false true false false false true false false false false false true false false false false true false false false false false false false false true false false false false true false false false true false false false true false false false false true false false false false false true false false false false false false false true false false false true false false false false false true false false false false true false false false true false false false false true false false false false false false true false false false false false true false false false false false true false false false false true false false false false false true false false false false false false true false false false false false true false false false true false false false false true false false false false true false false false true false false false false false false true false false false false false true false false false false false true false false false false true false false false false false true false false false false false false true false false false false true false false false false false true false false true false false false false true false false false true false false false false false false true false false false false false true false false false false true false false false false false true false false false false true false false false false false false false false false true false false false false true false false false true false false false false true false false false true false false false false false true false false false false false false true false false false false false true false false false false true false false false true false false false false false true false false false false false false false true false false false false false true false false false true false false false true false false false false true false false false false false false false false true false false false false true false false false true false false false false false true false false false false true false false false false false false false true false false false true false false false false false true false false false true false false false false true false false false true false false false false false false false true false false false false false true false false false false false false false false false false true false false true false false false false false false false false true false false false false true false false false false true false false false true false false false true false false false true false false false false false false false false true false false false false false true false false false false true false false false false true false false false false true false false false false false false false false true false false false false true false false false true false false false true false false false false false true false false false true false false false false false false false true false false false true false false false false true false false false false false true false false false false false true false false false false false false false true false false false false false true false false false true false false false false true false false false false false true false false false false false false true false false false false true false false false true false false false false false true false false false false false true false false false false false false false true false false false true false false false false true false false false false true false false false true false false false true false false false false false false false false true false false false false false true false false false false false true false false false false true false false false false false true false false false false false false false true false false false true false false false true false false false false true false false false true false false false true false false false false false false true false false false false false true false false false false false true false false false true false false false false false true false false false false false false true false false false false false true false false false false true false false false false true false false false true false false false false false false false false true false false false false true false false false false true false false false false false true false false false true false false false false false false false false true false false false true false false false false false true false false false false true false false false true false false false false false false false false true false false false true false false false false true false false false true false false false false false true false false false false true false false false false false false false false false false false false true false false false false false true false false false false true false false false true false false false true false false false false false false false false true false false false false true false false false false true false false false true false false false false false true false false false false false false false false true false false false true false false false true false false false false false true false false false false true false false false true false false false false false false false false true false false false false true false false false false true false false false true false false false false true false true false false false false false false false false true false false false false true false false false true false false false false true false false false false false true false false false false false false false true false false false true false false false false false true false false false false true false false false true false false false false true false false false false false false false false true false false false false false true false false false true false false false true false false false false true]).';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/ft_selectdata_20200403T171843_input_varargin_1.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172025_ft_selectdata_output_varargout.mat' };
ft_selectdata(cfg);

%%

cfg = [];
cfg.toilim = [0.8 1.2];
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172025_ft_selectdata_output_varargout.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172032_ft_redefinetrial_output_data.mat' };
ft_redefinetrial(cfg);

%%

cfg = [];
cfg.channel = 'MEGGRAD';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172032_ft_redefinetrial_output_data.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172035_ft_selectdata_output_varargout.mat' };
ft_selectdata(cfg);

%%

cfg = [];
cfg.events = {
 1, 2, 3, 13, 14, 15, 21
};
cfg.redefine_trial.toilim = [0.8 1.2];
cfg.select_data.channel = 'MEGGRAD';
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.trials = logical([false true false false false false true false false false false true false false false true false false false true false false false false false true false false false false false false false false true false false false false false true false false false true false false false true false false false false false true false false false false false false false true false false false false true false false false true false false false false false true false false false false true false false false false false false false false true false false false false true false false false true false false false true false false false false true false false false false false true false false false false false false false true false false false true false false false false false true false false false false true false false false true false false false false true false false false false false false true false false false false false true false false false false false true false false false false true false false false false false true false false false false false false true false false false false false true false false false true false false false false true false false false false true false false false true false false false false false false true false false false false false true false false false false false true false false false false true false false false false false true false false false false false false true false false false false true false false false false false true false false true false false false false true false false false true false false false false false false true false false false false false true false false false false true false false false false false true false false false false true false false false false false false false false false true false false false false true false false false true false false false false true false false false true false false false false false true false false false false false false true false false false false false true false false false false true false false false true false false false false false true false false false false false false false true false false false false false true false false false true false false false true false false false false true false false false false false false false false true false false false false true false false false true false false false false false true false false false false true false false false false false false false true false false false true false false false false false true false false false false false false false false true false false false true false false false false false false false true false false false false false true false false false false true false false false false false false false false true false false false false false false false false true false false false false true false false false false true false false false true false false false true false false false true false false false false false false false false true false false false false false true false false false false true false false false false true false false false false true false false false false false false false false true false false false false true false false false true false false false true false false false false false true false false false true false false false false false false false true false false false true false false false false true false false false false false true false false false false false true false false false false false false false true false false false false false true false false false true false false false false true false false false false false true false false false false false false true false false false false true false false false true false false false false false true false false false false false true false false false false false false false true false false false true false false false false true false false false false true false false false true false false false true false false false false false false false false true false false false false false true false false false false false true false false false false true false false false false false true false false false false false false false true false false false true false false false true false false false false true false false false true false false false true false false false false false false true false false false false false true false false false false false true false false false true false false false false false true false false false false false false true false false false false false true false false false false true false false false false true false false false true false false false false false false false false true false false false false true false false false false true false false false false false true false false false true false false false false false false false false true false false false true false false false false false true false false false false true false false false true false false false false false false false false true false false false true false false false false true false false false true false false false false false true false false false false true false false false false false false false true false false false false true false false false false false true false false false false true false false false true false false false true false false false false false false false false true false false false false true false false false false true false false false true false false false false false true false false false false false false false false true false false false true false false false true false false false false false true false false false false true false false false true false false false false false false false false true false false false false true false false false false true false false false true false false false false false false true false false false false false false false false true false false false false true false false false true false false false false true false false false false false true false false false false false false false true false false false true false false false false false true false false false false true false false false true false false false false true false false false false false false false false true false false false false false true false false false true false false false true false false false false]).';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/ft_selectdata_20200403T171843_input_varargin_1.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172056_ft_selectdata_output_varargout.mat' };
ft_selectdata(cfg);

%%

cfg = [];
cfg.toilim = [0.8 1.2];
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172056_ft_selectdata_output_varargout.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172103_ft_redefinetrial_output_data.mat' };
ft_redefinetrial(cfg);

%%

cfg = [];
cfg.channel = 'MEGGRAD';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172103_ft_redefinetrial_output_data.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172106_ft_selectdata_output_varargout.mat' };
ft_selectdata(cfg);

%%

cfg = [];
cfg.events = {
 1, 2, 3, 13, 14, 15, 21
};
cfg.redefine_trial.toilim = [0.8 1.2];
cfg.select_data.channel = 'MEGGRAD';
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.trials = logical([false false true false false false false true false false false false true false false false true false false false true false false false false false true false false false false false false false false true false false false false false true false false false true false false false true false false false false false true false false false false false false false true false false false false true false false false true false false false false false true false false false false true false false false false false false false false true false false false false true false false false true false false false true false false false false true false false false false false true false false false false false false false true false false false true false false false false false true false false false false true false false false true false false false false true false false false false false false true false false false false false true false false false false false true false false false false true false false false false false true false false false false false false true false false false false false true false false false true false false false false true false false false false true false false false true false false false false false false true false false false false false true false false false false false true false false false false true false false false false false true false false false false false false true false false false false true false false false false false true false false true false false false false true false false false true false false false false false false true false false false false false true false false false false true false false false false false true false false false false true false false false false false false false false false true false false false false true false false false true false false false false true false false false true false false false false false true false false false false false false true false false false false false true false false false false true false false false true false false false false false true false false false false false false false true false false false false false true false false false true false false false true false false false false true false false false false false false false false true false false false false true false false false true false false false false false true false false false false true false false false false false false false true false false false true false false false false false true false false true false false false false false true false false false true false false false false false false false true false false false false false true false false false false true false false false false true false false false true false false false false false false false false true false false false false true false false false false true false false false true false false false true false false false true false false false false false false false false true false false false false false true false false false false true false false false false true false false false false true false false false false false false false false true false false false false true false false false true false false false true false false false false false true false false false true false false false false false false false true false false false true false false false false true false false false false false true false false false false false true false false false false false false false true false false false false false true false false false true false false false false true false false false false false true false false false false false false true false false false false true false false false true false false false false false true false false false false false true false false false false false false false true false false false true false false false false true false false false false true false false false true false false false true false false false false false false false false true false false false false false true false false false false false true false false false false true false false false false false true false false false false false false false true false false false true false false false true false false false false true false false false true false false false true false false false false false false true false false false false false true false false false false false true false false false true false false false false false true false false false false false false true false false false false false true false false false false true false false false false true false false false true false false false false false false false false true false false false false true false false false false true false false false false false true false false false true false false false false false false false false true false false false true false false false false false true false false false false true false false false true false false false false false false false false true false false false true false false false false true false false false true false false false false false true false false false false true false false false false false false false true false false false false true false false false false false true false false false false true false false false true false false false true false false false false false false false false true false false false false true false false false false true false false false true false false false false false true false false false false false false false false true false false false true false false false true false false false false false true false false false false true false false false true false false false false false false false false true false false false false true false false false false true false false false true false false false false false false true false false false false false false false false true false false false false true false false false true false false false false true false false false false false true false false false false false false false true false false false true false false false false false true false false false false true false false false true false false false false true false false false false false false false false true false false false false false true false false false true false false false true false false false]).';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/ft_selectdata_20200403T171843_input_varargin_1.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172127_ft_selectdata_output_varargout.mat' };
ft_selectdata(cfg);

%%

cfg = [];
cfg.toilim = [0.8 1.2];
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172127_ft_selectdata_output_varargout.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172133_ft_redefinetrial_output_data.mat' };
ft_redefinetrial(cfg);

%%

cfg = [];
cfg.channel = 'MEGGRAD';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172133_ft_redefinetrial_output_data.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172136_ft_selectdata_output_varargout.mat' };
ft_selectdata(cfg);

%%

cfg = [];
cfg.events = {
 1, 2, 3, 13, 14, 15, 21
};
cfg.redefine_trial.toilim = [0.8 1.2];
cfg.select_data.channel = 'MEGGRAD';
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.trials = logical([false false false false false false false false false false false false false true false false false true false false false false false false false false false false false false false false false false false false false false false false false false true false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false true false false false false false false false false false false false false false true false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false true false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false true false false false false false false false false false true false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false true false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false true false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false true false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false true false false false false false false false false false true false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false true false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false true false false false false false false false false true false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false true false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false true false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false true false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false true false false false true false false false false false false]).';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/ft_selectdata_20200403T171843_input_varargin_1.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172157_ft_selectdata_output_varargout.mat' };
ft_selectdata(cfg);

%%

cfg = [];
cfg.toilim = [0.8 1.2];
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172157_ft_selectdata_output_varargout.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172200_ft_redefinetrial_output_data.mat' };
ft_redefinetrial(cfg);

%%

cfg = [];
cfg.channel = 'MEGGRAD';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172200_ft_redefinetrial_output_data.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172202_ft_selectdata_output_varargout.mat' };
ft_selectdata(cfg);

%%

cfg = [];
cfg.events = {
 1, 2, 3, 13, 14, 15, 21
};
cfg.redefine_trial.toilim = [0.8 1.2];
cfg.select_data.channel = 'MEGGRAD';
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.trials = logical([false false false false true false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false false true false false false false false false false false false false false false true false false false false false false false false false false true false false false false false false false false false false false false false false false false false true false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false true false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false true false false false false true false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false true false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false true false false false false false false false false false false false false false false false true false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false true false false false false false false false false false false false false false false false false false true false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false true false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false true false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false true false false false false true false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false true false false false false false false false false false false false false false false false false false true false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false true false]).';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/ft_selectdata_20200403T171843_input_varargin_1.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172223_ft_selectdata_output_varargout.mat' };
ft_selectdata(cfg);

%%

cfg = [];
cfg.toilim = [0.8 1.2];
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172223_ft_selectdata_output_varargout.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172227_ft_redefinetrial_output_data.mat' };
ft_redefinetrial(cfg);

%%

cfg = [];
cfg.channel = 'MEGGRAD';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172227_ft_redefinetrial_output_data.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172229_ft_selectdata_output_varargout.mat' };
ft_selectdata(cfg);

%%

cfg = [];
cfg.events = {
 1, 2, 3, 13, 14, 15, 21
};
cfg.redefine_trial.toilim = [0.8 1.2];
cfg.select_data.channel = 'MEGGRAD';
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.trials = logical([false false false false false false false false false false false false false false false false false false false false false false false true false false false false false true false false false false false false false false true false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false true false false false false false false false false false false true false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false true false false false false false false false false false false true false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false true false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false true false false false false true false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false true false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false true false false false false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false true false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false true false false false false false true false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false true false false false false false false false false false true false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false true false false false false false false false false false false true false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false true false false false false false true false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true false false false false false false false true false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false true false false false false false false false false false false false false false false false false false false false true false false false false false false false false true false false false false false false false false false false false false false false]).';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/ft_selectdata_20200403T171843_input_varargin_1.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172249_ft_selectdata_output_varargout.mat' };
ft_selectdata(cfg);

%%

cfg = [];
cfg.toilim = [0.8 1.2];
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172249_ft_selectdata_output_varargout.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172253_ft_redefinetrial_output_data.mat' };
ft_redefinetrial(cfg);

%%

cfg = [];
cfg.channel = 'MEGGRAD';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172253_ft_redefinetrial_output_data.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172255_ft_selectdata_output_varargout.mat' };
ft_selectdata(cfg);

%%

cfg = [];
cfg.events = {
 1, 2, 3, 13, 14, 15, 21
};
cfg.redefine_trial.toilim = [0.8 1.2];
cfg.select_data.channel = 'MEGGRAD';
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.trials = logical([false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false true true false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false false false false false false false false false false false true true true false false false false false false false false false false false false false false false false false false false false]).';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/ft_selectdata_20200403T171843_input_varargin_1.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172316_ft_selectdata_output_varargout.mat' };
ft_selectdata(cfg);

%%

cfg = [];
cfg.toilim = [0.8 1.2];
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172316_ft_selectdata_output_varargout.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172320_ft_redefinetrial_output_data.mat' };
ft_redefinetrial(cfg);

%%

cfg = [];
cfg.channel = 'MEGGRAD';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172320_ft_redefinetrial_output_data.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172322_ft_selectdata_output_varargout.mat' };
ft_selectdata(cfg);

%%

cfg = [];
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.contrast_event = 21;
cfg.method = 'mtmfft';
cfg.output = 'fourier';
cfg.pad = 'nextpow2';
cfg.taper = 'hanning';
cfg.channel = 'MEGGRAD';
cfg.foilim = [18 18];
cfg.keeptrials = 'yes';
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172322_ft_selectdata_output_varargout.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172332_ft_freqanalysis_output_freq.mat' };
ft_freqanalysis(cfg);

%%

cfg = [];
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.contrast_event = 21;
cfg.method = 'mtmfft';
cfg.output = 'fourier';
cfg.pad = 'nextpow2';
cfg.taper = 'hanning';
cfg.channel = 'MEGGRAD';
cfg.foilim = [18 18];
cfg.keeptrials = 'yes';
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172035_ft_selectdata_output_varargout.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172334_ft_freqanalysis_output_freq.mat' };
ft_freqanalysis(cfg);

%%

cfg = [];
cfg.inputfile = {
 '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172035_ft_selectdata_output_varargout.mat', '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172322_ft_selectdata_output_varargout.mat'
};
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172336_ft_appenddata_output_data.mat' };
ft_appenddata(cfg);

%%

cfg = [];
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.contrast_event = 21;
cfg.method = 'mtmfft';
cfg.output = 'fourier';
cfg.pad = 'nextpow2';
cfg.taper = 'hanning';
cfg.channel = 'MEGGRAD';
cfg.foilim = [18 18];
cfg.keeptrials = 'yes';
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172336_ft_appenddata_output_data.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172339_ft_freqanalysis_output_freq.mat' };
ft_freqanalysis(cfg);

%%

cfg = [];
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.contrast_event = 21;
cfg.method = 'mtmfft';
cfg.output = 'fourier';
cfg.pad = 'nextpow2';
cfg.taper = 'hanning';
cfg.channel = 'MEGGRAD';
cfg.foilim = [18 18];
cfg.keeptrials = 'yes';
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172106_ft_selectdata_output_varargout.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172341_ft_freqanalysis_output_freq.mat' };
ft_freqanalysis(cfg);

%%

cfg = [];
cfg.inputfile = {
 '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172106_ft_selectdata_output_varargout.mat', '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172322_ft_selectdata_output_varargout.mat'
};
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172343_ft_appenddata_output_data.mat' };
ft_appenddata(cfg);

%%

cfg = [];
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.contrast_event = 21;
cfg.method = 'mtmfft';
cfg.output = 'fourier';
cfg.pad = 'nextpow2';
cfg.taper = 'hanning';
cfg.channel = 'MEGGRAD';
cfg.foilim = [18 18];
cfg.keeptrials = 'yes';
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172343_ft_appenddata_output_data.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172347_ft_freqanalysis_output_freq.mat' };
ft_freqanalysis(cfg);

%%

cfg = [];
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.contrast_event = 21;
cfg.method = 'mtmfft';
cfg.output = 'fourier';
cfg.pad = 'nextpow2';
cfg.taper = 'hanning';
cfg.channel = 'MEGGRAD';
cfg.foilim = [18 18];
cfg.keeptrials = 'yes';
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172136_ft_selectdata_output_varargout.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172349_ft_freqanalysis_output_freq.mat' };
ft_freqanalysis(cfg);

%%

cfg = [];
cfg.inputfile = {
 '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172136_ft_selectdata_output_varargout.mat', '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172322_ft_selectdata_output_varargout.mat'
};
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172351_ft_appenddata_output_data.mat' };
ft_appenddata(cfg);

%%

cfg = [];
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.contrast_event = 21;
cfg.method = 'mtmfft';
cfg.output = 'fourier';
cfg.pad = 'nextpow2';
cfg.taper = 'hanning';
cfg.channel = 'MEGGRAD';
cfg.foilim = [18 18];
cfg.keeptrials = 'yes';
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172351_ft_appenddata_output_data.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172354_ft_freqanalysis_output_freq.mat' };
ft_freqanalysis(cfg);

%%

cfg = [];
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.contrast_event = 21;
cfg.method = 'mtmfft';
cfg.output = 'fourier';
cfg.pad = 'nextpow2';
cfg.taper = 'hanning';
cfg.channel = 'MEGGRAD';
cfg.foilim = [18 18];
cfg.keeptrials = 'yes';
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172202_ft_selectdata_output_varargout.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172356_ft_freqanalysis_output_freq.mat' };
ft_freqanalysis(cfg);

%%

cfg = [];
cfg.inputfile = {
 '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172202_ft_selectdata_output_varargout.mat', '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172322_ft_selectdata_output_varargout.mat'
};
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172358_ft_appenddata_output_data.mat' };
ft_appenddata(cfg);

%%

cfg = [];
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.contrast_event = 21;
cfg.method = 'mtmfft';
cfg.output = 'fourier';
cfg.pad = 'nextpow2';
cfg.taper = 'hanning';
cfg.channel = 'MEGGRAD';
cfg.foilim = [18 18];
cfg.keeptrials = 'yes';
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172358_ft_appenddata_output_data.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172401_ft_freqanalysis_output_freq.mat' };
ft_freqanalysis(cfg);

%%

cfg = [];
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.contrast_event = 21;
cfg.method = 'mtmfft';
cfg.output = 'fourier';
cfg.pad = 'nextpow2';
cfg.taper = 'hanning';
cfg.channel = 'MEGGRAD';
cfg.foilim = [18 18];
cfg.keeptrials = 'yes';
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172229_ft_selectdata_output_varargout.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172403_ft_freqanalysis_output_freq.mat' };
ft_freqanalysis(cfg);

%%

cfg = [];
cfg.inputfile = {
 '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172229_ft_selectdata_output_varargout.mat', '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172322_ft_selectdata_output_varargout.mat'
};
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172405_ft_appenddata_output_data.mat' };
ft_appenddata(cfg);

%%

cfg = [];
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.contrast_event = 21;
cfg.method = 'mtmfft';
cfg.output = 'fourier';
cfg.pad = 'nextpow2';
cfg.taper = 'hanning';
cfg.channel = 'MEGGRAD';
cfg.foilim = [18 18];
cfg.keeptrials = 'yes';
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172405_ft_appenddata_output_data.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172407_ft_freqanalysis_output_freq.mat' };
ft_freqanalysis(cfg);

%%

cfg = [];
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.contrast_event = 21;
cfg.method = 'mtmfft';
cfg.output = 'fourier';
cfg.pad = 'nextpow2';
cfg.taper = 'hanning';
cfg.channel = 'MEGGRAD';
cfg.foilim = [18 18];
cfg.keeptrials = 'yes';
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172255_ft_selectdata_output_varargout.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172409_ft_freqanalysis_output_freq.mat' };
ft_freqanalysis(cfg);

%%

cfg = [];
cfg.inputfile = {
 '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172255_ft_selectdata_output_varargout.mat', '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172322_ft_selectdata_output_varargout.mat'
};
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172411_ft_appenddata_output_data.mat' };
ft_appenddata(cfg);

%%

cfg = [];
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.contrast_event = 21;
cfg.method = 'mtmfft';
cfg.output = 'fourier';
cfg.pad = 'nextpow2';
cfg.taper = 'hanning';
cfg.channel = 'MEGGRAD';
cfg.foilim = [18 18];
cfg.keeptrials = 'yes';
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172411_ft_appenddata_output_data.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172414_ft_freqanalysis_output_freq.mat' };
ft_freqanalysis(cfg);

%%

cfg = [];
cfg.method = 'dics';
cfg.frequency = 18;
cfg.channel = 'MEGGRAD';
cfg.senstype = 'MEG';
cfg.dics.projectnoise = 'yes';
cfg.dics.keepfilter = 'yes';
cfg.dics.realfilter = 'yes';
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.contrast_event = 21;
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.headmodel = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171819_ft_prepare_leadfield_largecfginput_headmodel.mat';
cfg.grid = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171819_ft_prepare_leadfield_output_sourcemodel.mat';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172339_ft_freqanalysis_output_freq.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172428_ft_sourceanalysis_output_source.mat' };
ft_sourceanalysis(cfg);

%%

cfg = [];
cfg.method = 'dics';
cfg.frequency = 18;
cfg.channel = 'MEGGRAD';
cfg.senstype = 'MEG';
cfg.dics.projectnoise = 'yes';
cfg.dics.keepfilter = 'yes';
cfg.dics.realfilter = 'yes';
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.contrast_event = 21;
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.headmodel = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171819_ft_prepare_leadfield_largecfginput_headmodel.mat';
cfg.grid = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172439_ft_sourceanalysis_largecfginput_grid.mat';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172334_ft_freqanalysis_output_freq.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172439_ft_sourceanalysis_output_source.mat' };
ft_sourceanalysis(cfg);

%%

cfg = [];
cfg.method = 'dics';
cfg.frequency = 18;
cfg.channel = 'MEGGRAD';
cfg.senstype = 'MEG';
cfg.dics.projectnoise = 'yes';
cfg.dics.keepfilter = 'yes';
cfg.dics.realfilter = 'yes';
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.contrast_event = 21;
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.headmodel = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171819_ft_prepare_leadfield_largecfginput_headmodel.mat';
cfg.grid = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172439_ft_sourceanalysis_largecfginput_grid.mat';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172332_ft_freqanalysis_output_freq.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172454_ft_sourceanalysis_output_source.mat' };
ft_sourceanalysis(cfg);

%%

cfg = [];
cfg.method = 'dics';
cfg.frequency = 18;
cfg.channel = 'MEGGRAD';
cfg.senstype = 'MEG';
cfg.dics.projectnoise = 'yes';
cfg.dics.keepfilter = 'yes';
cfg.dics.realfilter = 'yes';
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.contrast_event = 21;
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.headmodel = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171819_ft_prepare_leadfield_largecfginput_headmodel.mat';
cfg.grid = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171819_ft_prepare_leadfield_output_sourcemodel.mat';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172347_ft_freqanalysis_output_freq.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172506_ft_sourceanalysis_output_source.mat' };
ft_sourceanalysis(cfg);

%%

cfg = [];
cfg.method = 'dics';
cfg.frequency = 18;
cfg.channel = 'MEGGRAD';
cfg.senstype = 'MEG';
cfg.dics.projectnoise = 'yes';
cfg.dics.keepfilter = 'yes';
cfg.dics.realfilter = 'yes';
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.contrast_event = 21;
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.headmodel = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171819_ft_prepare_leadfield_largecfginput_headmodel.mat';
cfg.grid = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172517_ft_sourceanalysis_largecfginput_grid.mat';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172341_ft_freqanalysis_output_freq.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172517_ft_sourceanalysis_output_source.mat' };
ft_sourceanalysis(cfg);

%%

cfg = [];
cfg.method = 'dics';
cfg.frequency = 18;
cfg.channel = 'MEGGRAD';
cfg.senstype = 'MEG';
cfg.dics.projectnoise = 'yes';
cfg.dics.keepfilter = 'yes';
cfg.dics.realfilter = 'yes';
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.contrast_event = 21;
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.headmodel = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171819_ft_prepare_leadfield_largecfginput_headmodel.mat';
cfg.grid = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172517_ft_sourceanalysis_largecfginput_grid.mat';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172332_ft_freqanalysis_output_freq.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172531_ft_sourceanalysis_output_source.mat' };
ft_sourceanalysis(cfg);

%%

cfg = [];
cfg.method = 'dics';
cfg.frequency = 18;
cfg.channel = 'MEGGRAD';
cfg.senstype = 'MEG';
cfg.dics.projectnoise = 'yes';
cfg.dics.keepfilter = 'yes';
cfg.dics.realfilter = 'yes';
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.contrast_event = 21;
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.headmodel = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171819_ft_prepare_leadfield_largecfginput_headmodel.mat';
cfg.grid = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171819_ft_prepare_leadfield_output_sourcemodel.mat';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172354_ft_freqanalysis_output_freq.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172543_ft_sourceanalysis_output_source.mat' };
ft_sourceanalysis(cfg);

%%

cfg = [];
cfg.method = 'dics';
cfg.frequency = 18;
cfg.channel = 'MEGGRAD';
cfg.senstype = 'MEG';
cfg.dics.projectnoise = 'yes';
cfg.dics.keepfilter = 'yes';
cfg.dics.realfilter = 'yes';
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.contrast_event = 21;
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.headmodel = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171819_ft_prepare_leadfield_largecfginput_headmodel.mat';
cfg.grid = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172554_ft_sourceanalysis_largecfginput_grid.mat';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172349_ft_freqanalysis_output_freq.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172554_ft_sourceanalysis_output_source.mat' };
ft_sourceanalysis(cfg);

%%

cfg = [];
cfg.method = 'dics';
cfg.frequency = 18;
cfg.channel = 'MEGGRAD';
cfg.senstype = 'MEG';
cfg.dics.projectnoise = 'yes';
cfg.dics.keepfilter = 'yes';
cfg.dics.realfilter = 'yes';
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.contrast_event = 21;
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.headmodel = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171819_ft_prepare_leadfield_largecfginput_headmodel.mat';
cfg.grid = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172554_ft_sourceanalysis_largecfginput_grid.mat';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172332_ft_freqanalysis_output_freq.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172608_ft_sourceanalysis_output_source.mat' };
ft_sourceanalysis(cfg);

%%

cfg = [];
cfg.method = 'dics';
cfg.frequency = 18;
cfg.channel = 'MEGGRAD';
cfg.senstype = 'MEG';
cfg.dics.projectnoise = 'yes';
cfg.dics.keepfilter = 'yes';
cfg.dics.realfilter = 'yes';
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.contrast_event = 21;
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.headmodel = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171819_ft_prepare_leadfield_largecfginput_headmodel.mat';
cfg.grid = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171819_ft_prepare_leadfield_output_sourcemodel.mat';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172401_ft_freqanalysis_output_freq.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172620_ft_sourceanalysis_output_source.mat' };
ft_sourceanalysis(cfg);

%%

cfg = [];
cfg.method = 'dics';
cfg.frequency = 18;
cfg.channel = 'MEGGRAD';
cfg.senstype = 'MEG';
cfg.dics.projectnoise = 'yes';
cfg.dics.keepfilter = 'yes';
cfg.dics.realfilter = 'yes';
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.contrast_event = 21;
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.headmodel = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171819_ft_prepare_leadfield_largecfginput_headmodel.mat';
cfg.grid = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172631_ft_sourceanalysis_largecfginput_grid.mat';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172356_ft_freqanalysis_output_freq.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172631_ft_sourceanalysis_output_source.mat' };
ft_sourceanalysis(cfg);

%%

cfg = [];
cfg.method = 'dics';
cfg.frequency = 18;
cfg.channel = 'MEGGRAD';
cfg.senstype = 'MEG';
cfg.dics.projectnoise = 'yes';
cfg.dics.keepfilter = 'yes';
cfg.dics.realfilter = 'yes';
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.contrast_event = 21;
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.headmodel = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171819_ft_prepare_leadfield_largecfginput_headmodel.mat';
cfg.grid = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172631_ft_sourceanalysis_largecfginput_grid.mat';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172332_ft_freqanalysis_output_freq.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172645_ft_sourceanalysis_output_source.mat' };
ft_sourceanalysis(cfg);

%%

cfg = [];
cfg.method = 'dics';
cfg.frequency = 18;
cfg.channel = 'MEGGRAD';
cfg.senstype = 'MEG';
cfg.dics.projectnoise = 'yes';
cfg.dics.keepfilter = 'yes';
cfg.dics.realfilter = 'yes';
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.contrast_event = 21;
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.headmodel = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171819_ft_prepare_leadfield_largecfginput_headmodel.mat';
cfg.grid = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171819_ft_prepare_leadfield_output_sourcemodel.mat';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172407_ft_freqanalysis_output_freq.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172657_ft_sourceanalysis_output_source.mat' };
ft_sourceanalysis(cfg);

%%

cfg = [];
cfg.method = 'dics';
cfg.frequency = 18;
cfg.channel = 'MEGGRAD';
cfg.senstype = 'MEG';
cfg.dics.projectnoise = 'yes';
cfg.dics.keepfilter = 'yes';
cfg.dics.realfilter = 'yes';
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.contrast_event = 21;
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.headmodel = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171819_ft_prepare_leadfield_largecfginput_headmodel.mat';
cfg.grid = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172708_ft_sourceanalysis_largecfginput_grid.mat';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172403_ft_freqanalysis_output_freq.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172708_ft_sourceanalysis_output_source.mat' };
ft_sourceanalysis(cfg);

%%

cfg = [];
cfg.method = 'dics';
cfg.frequency = 18;
cfg.channel = 'MEGGRAD';
cfg.senstype = 'MEG';
cfg.dics.projectnoise = 'yes';
cfg.dics.keepfilter = 'yes';
cfg.dics.realfilter = 'yes';
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.contrast_event = 21;
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.headmodel = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171819_ft_prepare_leadfield_largecfginput_headmodel.mat';
cfg.grid = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172708_ft_sourceanalysis_largecfginput_grid.mat';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172332_ft_freqanalysis_output_freq.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172722_ft_sourceanalysis_output_source.mat' };
ft_sourceanalysis(cfg);

%%

cfg = [];
cfg.method = 'dics';
cfg.frequency = 18;
cfg.channel = 'MEGGRAD';
cfg.senstype = 'MEG';
cfg.dics.projectnoise = 'yes';
cfg.dics.keepfilter = 'yes';
cfg.dics.realfilter = 'yes';
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.contrast_event = 21;
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.headmodel = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171819_ft_prepare_leadfield_largecfginput_headmodel.mat';
cfg.grid = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171819_ft_prepare_leadfield_output_sourcemodel.mat';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172414_ft_freqanalysis_output_freq.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172735_ft_sourceanalysis_output_source.mat' };
ft_sourceanalysis(cfg);

%%

cfg = [];
cfg.method = 'dics';
cfg.frequency = 18;
cfg.channel = 'MEGGRAD';
cfg.senstype = 'MEG';
cfg.dics.projectnoise = 'yes';
cfg.dics.keepfilter = 'yes';
cfg.dics.realfilter = 'yes';
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.contrast_event = 21;
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.headmodel = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171819_ft_prepare_leadfield_largecfginput_headmodel.mat';
cfg.grid = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172746_ft_sourceanalysis_largecfginput_grid.mat';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172409_ft_freqanalysis_output_freq.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172746_ft_sourceanalysis_output_source.mat' };
ft_sourceanalysis(cfg);

%%

cfg = [];
cfg.method = 'dics';
cfg.frequency = 18;
cfg.channel = 'MEGGRAD';
cfg.senstype = 'MEG';
cfg.dics.projectnoise = 'yes';
cfg.dics.keepfilter = 'yes';
cfg.dics.realfilter = 'yes';
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.contrast_event = 21;
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.headmodel = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T171819_ft_prepare_leadfield_largecfginput_headmodel.mat';
cfg.grid = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172746_ft_sourceanalysis_largecfginput_grid.mat';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172332_ft_freqanalysis_output_freq.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172800_ft_sourceanalysis_output_source.mat' };
ft_sourceanalysis(cfg);

%%

cfg = [];
cfg.parameter = 'pow';
cfg.downsample = 2;
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.template_path = '/project_qnap/3010000.02/reproducescript/andersen/fieldtrip/template/headmodel/standard_mri.mat';
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.inputfile = {
 '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T173033_ft_sourceinterpolate_input_functional.mat', '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T173033_ft_sourceinterpolate_input_anatomical.mat'
};
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T173047_ft_sourceinterpolate_output_interp.mat' };
ft_sourceinterpolate(cfg);

%%

cfg = [];
cfg.parameter = 'pow';
cfg.downsample = 2;
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.template_path = '/project_qnap/3010000.02/reproducescript/andersen/fieldtrip/template/headmodel/standard_mri.mat';
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.inputfile = {
 '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T173101_ft_sourceinterpolate_input_functional.mat', '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T173033_ft_sourceinterpolate_input_anatomical.mat'
};
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T173113_ft_sourceinterpolate_output_interp.mat' };
ft_sourceinterpolate(cfg);

%%

cfg = [];
cfg.parameter = 'pow';
cfg.downsample = 2;
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.template_path = '/project_qnap/3010000.02/reproducescript/andersen/fieldtrip/template/headmodel/standard_mri.mat';
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.inputfile = {
 '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T173127_ft_sourceinterpolate_input_functional.mat', '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T173033_ft_sourceinterpolate_input_anatomical.mat'
};
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T173140_ft_sourceinterpolate_output_interp.mat' };
ft_sourceinterpolate(cfg);

%%

cfg = [];
cfg.parameter = 'pow';
cfg.downsample = 2;
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.template_path = '/project_qnap/3010000.02/reproducescript/andersen/fieldtrip/template/headmodel/standard_mri.mat';
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.inputfile = {
 '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T173154_ft_sourceinterpolate_input_functional.mat', '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T173033_ft_sourceinterpolate_input_anatomical.mat'
};
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T173206_ft_sourceinterpolate_output_interp.mat' };
ft_sourceinterpolate(cfg);

%%

cfg = [];
cfg.parameter = 'pow';
cfg.downsample = 2;
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.template_path = '/project_qnap/3010000.02/reproducescript/andersen/fieldtrip/template/headmodel/standard_mri.mat';
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.inputfile = {
 '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T173220_ft_sourceinterpolate_input_functional.mat', '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T173033_ft_sourceinterpolate_input_anatomical.mat'
};
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T173232_ft_sourceinterpolate_output_interp.mat' };
ft_sourceinterpolate(cfg);

%%

cfg = [];
cfg.parameter = 'pow';
cfg.downsample = 2;
cfg.events = {
 1, 2, 3, 13, 14, 15
};
cfg.template_path = '/project_qnap/3010000.02/reproducescript/andersen/fieldtrip/template/headmodel/standard_mri.mat';
cfg.subject = 'sub-01';
cfg.save_path = '/project_qnap/3010000.02/reproducescript/andersen/data/sub-01/ses-meg/meg';
cfg.inputfile = {
 '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T173245_ft_sourceinterpolate_input_functional.mat', '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T173033_ft_sourceinterpolate_input_anatomical.mat'
};
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T173258_ft_sourceinterpolate_output_interp.mat' };
ft_sourceinterpolate(cfg);

%%

cfg = [];
cfg.trials = [259 439 474 582 753 904 1018 1019 1034];
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/ft_selectdata_20200403T174017_input_varargin_1.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T174201_ft_selectdata_output_varargout.mat' };
ft_selectdata(cfg);

%%

cfg = [];
cfg.component = [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60];
cfg.layout = 'neuromag306mag.lay';
cfg.comment = 'no';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T174217_ft_databrowser_input_data.mat' };
cfg.outputfile = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T174328_ft_topoplotIC_output';
figure; ft_topoplotIC(cfg);

%%

cfg = [];
cfg.layout = 'neuromag306mag.lay';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/ft_multiplotER_20200403T174428_input_varargin_1.mat' };
cfg.outputfile = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T174431_ft_multiplotER_output';
figure; ft_multiplotER(cfg);

%%

cfg = [];
cfg.layout = 'neuromag306mag.lay';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/ft_multiplotER_20200403T174436_input_varargin_1.mat' };
cfg.outputfile = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T174439_ft_multiplotER_output';
figure; ft_multiplotER(cfg);

%%

cfg = [];
cfg.layout = 'neuromag306mag.lay';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/ft_multiplotER_20200403T174446_input_varargin_1.mat' };
cfg.outputfile = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T174449_ft_multiplotER_output';
figure; ft_multiplotER(cfg);

%%

cfg = [];
cfg.layout = 'neuromag306mag.lay';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/ft_multiplotER_20200403T174500_input_varargin_1.mat' };
cfg.outputfile = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T174502_ft_multiplotER_output';
figure; ft_multiplotER(cfg);

%%

cfg = [];
cfg.layout = 'neuromag306mag.lay';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/ft_multiplotER_20200403T174515_input_varargin_1.mat' };
cfg.outputfile = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T174518_ft_multiplotER_output';
figure; ft_multiplotER(cfg);

%%

cfg = [];
cfg.layout = 'neuromag306mag.lay';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/ft_multiplotER_20200403T174534_input_varargin_1.mat' };
cfg.outputfile = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T174537_ft_multiplotER_output';
figure; ft_multiplotER(cfg);

%%

cfg = [];
cfg.layout = 'neuromag306mag.lay';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/ft_multiplotER_20200403T174556_input_varargin_1.mat' };
cfg.outputfile = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T174559_ft_multiplotER_output';
figure; ft_multiplotER(cfg);

%%

cfg = [];
cfg.layout = 'neuromag306mag.lay';
cfg.xlim = [0.05 0.07];
cfg.zlim = [-3e-13 3e-13];
cfg.title_names = {
 'Standard 1', 'Standard 2', 'Standard 3', 'Omission 4', 'Omission 5', 'Omission 6', 'Non-Stimulation'
};
cfg.comment = 'no';
cfg.custom_colorbar = 'yes';
cfg.colorbar_label = 'Field Strength (T)';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/ft_multiplotER_20200403T174428_input_varargin_1.mat' };
cfg.outputfile = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T174622_ft_topoplotER_output';
figure; ft_topoplotER(cfg);

%%

cfg = [];
cfg.layout = 'neuromag306mag.lay';
cfg.xlim = [0.05 0.07];
cfg.zlim = [-3e-13 3e-13];
cfg.title_names = {
 'Standard 1', 'Standard 2', 'Standard 3', 'Omission 4', 'Omission 5', 'Omission 6', 'Non-Stimulation'
};
cfg.comment = 'no';
cfg.custom_colorbar = 'yes';
cfg.colorbar_label = 'Field Strength (T)';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/ft_multiplotER_20200403T174436_input_varargin_1.mat' };
cfg.outputfile = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T174626_ft_topoplotER_output';
figure; ft_topoplotER(cfg);

%%

cfg = [];
cfg.layout = 'neuromag306mag.lay';
cfg.xlim = [0.05 0.07];
cfg.zlim = [-3e-13 3e-13];
cfg.title_names = {
 'Standard 1', 'Standard 2', 'Standard 3', 'Omission 4', 'Omission 5', 'Omission 6', 'Non-Stimulation'
};
cfg.comment = 'no';
cfg.custom_colorbar = 'yes';
cfg.colorbar_label = 'Field Strength (T)';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/ft_multiplotER_20200403T174446_input_varargin_1.mat' };
cfg.outputfile = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T174631_ft_topoplotER_output';
figure; ft_topoplotER(cfg);

%%

cfg = [];
cfg.layout = 'neuromag306mag.lay';
cfg.xlim = [0.05 0.07];
cfg.zlim = [-3e-13 3e-13];
cfg.title_names = {
 'Standard 1', 'Standard 2', 'Standard 3', 'Omission 4', 'Omission 5', 'Omission 6', 'Non-Stimulation'
};
cfg.comment = 'no';
cfg.custom_colorbar = 'yes';
cfg.colorbar_label = 'Field Strength (T)';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/ft_multiplotER_20200403T174500_input_varargin_1.mat' };
cfg.outputfile = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T174637_ft_topoplotER_output';
figure; ft_topoplotER(cfg);

%%

cfg = [];
cfg.layout = 'neuromag306mag.lay';
cfg.xlim = [0.05 0.07];
cfg.zlim = [-3e-13 3e-13];
cfg.title_names = {
 'Standard 1', 'Standard 2', 'Standard 3', 'Omission 4', 'Omission 5', 'Omission 6', 'Non-Stimulation'
};
cfg.comment = 'no';
cfg.custom_colorbar = 'yes';
cfg.colorbar_label = 'Field Strength (T)';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/ft_multiplotER_20200403T174515_input_varargin_1.mat' };
cfg.outputfile = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T174643_ft_topoplotER_output';
figure; ft_topoplotER(cfg);

%%

cfg = [];
cfg.layout = 'neuromag306mag.lay';
cfg.xlim = [0.05 0.07];
cfg.zlim = [-3e-13 3e-13];
cfg.title_names = {
 'Standard 1', 'Standard 2', 'Standard 3', 'Omission 4', 'Omission 5', 'Omission 6', 'Non-Stimulation'
};
cfg.comment = 'no';
cfg.custom_colorbar = 'yes';
cfg.colorbar_label = 'Field Strength (T)';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/ft_multiplotER_20200403T174534_input_varargin_1.mat' };
cfg.outputfile = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T174651_ft_topoplotER_output';
figure; ft_topoplotER(cfg);

%%

cfg = [];
cfg.layout = 'neuromag306mag.lay';
cfg.xlim = [0.05 0.07];
cfg.zlim = [-3e-13 3e-13];
cfg.title_names = {
 'Standard 1', 'Standard 2', 'Standard 3', 'Omission 4', 'Omission 5', 'Omission 6', 'Non-Stimulation'
};
cfg.comment = 'no';
cfg.custom_colorbar = 'yes';
cfg.colorbar_label = 'Field Strength (T)';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/ft_multiplotER_20200403T174556_input_varargin_1.mat' };
cfg.outputfile = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T174659_ft_topoplotER_output';
figure; ft_topoplotER(cfg);

%%

cfg = [];
cfg.layout = 'neuromag306cmb.lay';
cfg.channel = 'MEG0432+0433';
cfg.zlim = [0.8 1.8];
cfg.fontsize = 30;
cfg.title = 'Standard 1';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T174748_ft_singleplotTFR_input_data.mat' };
cfg.outputfile = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T174802_ft_singleplotTFR_output';
figure; ft_singleplotTFR(cfg);

%%

cfg = [];
cfg.layout = 'neuromag306cmb.lay';
cfg.channel = 'MEG0432+0433';
cfg.zlim = [0.8 1.8];
cfg.fontsize = 30;
cfg.title = 'Standard 2';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T174812_ft_singleplotTFR_input_data.mat' };
cfg.outputfile = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T174826_ft_singleplotTFR_output';
figure; ft_singleplotTFR(cfg);

%%

cfg = [];
cfg.layout = 'neuromag306cmb.lay';
cfg.channel = 'MEG0432+0433';
cfg.zlim = [0.8 1.8];
cfg.fontsize = 30;
cfg.title = 'Standard 3';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T174844_ft_singleplotTFR_input_data.mat' };
cfg.outputfile = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T174857_ft_singleplotTFR_output';
figure; ft_singleplotTFR(cfg);

%%

cfg = [];
cfg.layout = 'neuromag306cmb.lay';
cfg.channel = 'MEG0432+0433';
cfg.zlim = [0.8 1.8];
cfg.fontsize = 30;
cfg.title = 'Omission 4';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T174924_ft_singleplotTFR_input_data.mat' };
cfg.outputfile = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T174936_ft_singleplotTFR_output';
figure; ft_singleplotTFR(cfg);

%%

cfg = [];
cfg.layout = 'neuromag306cmb.lay';
cfg.channel = 'MEG0432+0433';
cfg.zlim = [0.8 1.8];
cfg.fontsize = 30;
cfg.title = 'Omission 5';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T175011_ft_singleplotTFR_input_data.mat' };
cfg.outputfile = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T175024_ft_singleplotTFR_output';
figure; ft_singleplotTFR(cfg);

%%

cfg = [];
cfg.layout = 'neuromag306cmb.lay';
cfg.channel = 'MEG0432+0433';
cfg.zlim = [0.8 1.8];
cfg.fontsize = 30;
cfg.title = 'Omission 6';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T175108_ft_singleplotTFR_input_data.mat' };
cfg.outputfile = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T175120_ft_singleplotTFR_output';
figure; ft_singleplotTFR(cfg);

%%

cfg = [];
cfg.layout = 'neuromag306cmb.lay';
cfg.xlim = [0.5 0.9];
cfg.ylim = [15 21];
cfg.zlim = [0.8 1.3];
cfg.comment = 'no';
cfg.custom_colorbar = 'yes';
cfg.colorbar_label = 'Power relative to non-stimulation';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T174748_ft_singleplotTFR_input_data.mat' };
cfg.outputfile = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T175227_ft_topoplotTFR_output';
figure; ft_topoplotTFR(cfg);

%%

cfg = [];
cfg.layout = 'neuromag306cmb.lay';
cfg.xlim = [0.5 0.9];
cfg.ylim = [15 21];
cfg.zlim = [0.8 1.3];
cfg.comment = 'no';
cfg.custom_colorbar = 'yes';
cfg.colorbar_label = 'Power relative to non-stimulation';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T174812_ft_singleplotTFR_input_data.mat' };
cfg.outputfile = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T175256_ft_topoplotTFR_output';
figure; ft_topoplotTFR(cfg);

%%

cfg = [];
cfg.layout = 'neuromag306cmb.lay';
cfg.xlim = [0.5 0.9];
cfg.ylim = [15 21];
cfg.zlim = [0.8 1.3];
cfg.comment = 'no';
cfg.custom_colorbar = 'yes';
cfg.colorbar_label = 'Power relative to non-stimulation';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T174844_ft_singleplotTFR_input_data.mat' };
cfg.outputfile = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T175334_ft_topoplotTFR_output';
figure; ft_topoplotTFR(cfg);

%%

cfg = [];
cfg.layout = 'neuromag306cmb.lay';
cfg.xlim = [0.5 0.9];
cfg.ylim = [15 21];
cfg.zlim = [0.8 1.3];
cfg.comment = 'no';
cfg.custom_colorbar = 'yes';
cfg.colorbar_label = 'Power relative to non-stimulation';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T174924_ft_singleplotTFR_input_data.mat' };
cfg.outputfile = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T175418_ft_topoplotTFR_output';
figure; ft_topoplotTFR(cfg);

%%

cfg = [];
cfg.layout = 'neuromag306cmb.lay';
cfg.xlim = [0.5 0.9];
cfg.ylim = [15 21];
cfg.zlim = [0.8 1.3];
cfg.comment = 'no';
cfg.custom_colorbar = 'yes';
cfg.colorbar_label = 'Power relative to non-stimulation';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T175011_ft_singleplotTFR_input_data.mat' };
cfg.outputfile = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T175510_ft_topoplotTFR_output';
figure; ft_topoplotTFR(cfg);

%%

cfg = [];
cfg.layout = 'neuromag306cmb.lay';
cfg.xlim = [0.5 0.9];
cfg.ylim = [15 21];
cfg.zlim = [0.8 1.3];
cfg.comment = 'no';
cfg.custom_colorbar = 'yes';
cfg.colorbar_label = 'Power relative to non-stimulation';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T175108_ft_singleplotTFR_input_data.mat' };
cfg.outputfile = '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T175612_ft_topoplotTFR_output';
figure; ft_topoplotTFR(cfg);

%%

cfg = [];
cfg.method = 'svd';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172334_ft_freqanalysis_output_freq.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T180015_ft_combineplanar_output_data.mat' };
ft_combineplanar(cfg);

%%

cfg = [];
cfg.method = 'svd';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172341_ft_freqanalysis_output_freq.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T180016_ft_combineplanar_output_data.mat' };
ft_combineplanar(cfg);

%%

cfg = [];
cfg.method = 'svd';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172349_ft_freqanalysis_output_freq.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T180018_ft_combineplanar_output_data.mat' };
ft_combineplanar(cfg);

%%

cfg = [];
cfg.method = 'svd';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172356_ft_freqanalysis_output_freq.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T180019_ft_combineplanar_output_data.mat' };
ft_combineplanar(cfg);

%%

cfg = [];
cfg.method = 'svd';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172403_ft_freqanalysis_output_freq.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T180021_ft_combineplanar_output_data.mat' };
ft_combineplanar(cfg);

%%

cfg = [];
cfg.method = 'svd';
cfg.inputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T172409_ft_freqanalysis_output_freq.mat' };
cfg.outputfile = { '/project_qnap/3010000.02/reproducescript/andersen/reproduce01/20200403T180023_ft_combineplanar_output_data.mat' };
ft_combineplanar(cfg);


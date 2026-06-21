.class public final Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;
.super Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/generated/callback/OnClickListener$Listener;


# static fields
.field public static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final mCallback3:Lcom/motorola/camera/generated/callback/OnClickListener;

.field public final mCallback4:Lcom/motorola/camera/generated/callback/OnClickListener;

.field public mDirtyFlags:J

.field public final mboundView10:Landroidx/constraintlayout/widget/Group;

.field public final mboundView11:Landroid/widget/TextView;

.field public final mboundView9:Landroidx/constraintlayout/widget/Group;

.field public final superSlowMotionTrimBarvaluesAttrChanged:Lcom/motorola/camera/PermissionCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0438

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0437

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a042d

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a043a

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a042a

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a042f

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a042e

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0431

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 18

    move-object/from16 v2, p1

    sget-object v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v2, v1, v0, v3}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroid/view/View;[Ljava/lang/Object;Landroid/util/SparseIntArray;Z)V

    const/16 v0, 0x10

    aget-object v0, v1, v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    const/4 v0, 0x2

    aget-object v4, v1, v0

    check-cast v4, Landroid/widget/ImageButton;

    const/16 v5, 0xe

    aget-object v5, v1, v5

    check-cast v5, Landroidx/media3/ui/PlayerView;

    const/16 v6, 0x12

    aget-object v6, v1, v6

    check-cast v6, Landroidx/constraintlayout/widget/Guideline;

    const/16 v7, 0x11

    aget-object v7, v1, v7

    check-cast v7, Landroidx/constraintlayout/widget/Guideline;

    const/4 v8, 0x5

    aget-object v8, v1, v8

    check-cast v8, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    const/16 v9, 0x13

    aget-object v9, v1, v9

    check-cast v9, Landroidx/constraintlayout/widget/Guideline;

    const/16 v10, 0x8

    aget-object v10, v1, v10

    check-cast v10, Landroid/widget/Button;

    const/4 v11, 0x6

    aget-object v11, v1, v11

    check-cast v11, Landroid/widget/TextView;

    const/4 v12, 0x7

    aget-object v12, v1, v12

    check-cast v12, Landroid/widget/TextView;

    const/4 v13, 0x4

    aget-object v13, v1, v13

    check-cast v13, Landroid/widget/ImageView;

    aget-object v14, v1, v3

    check-cast v14, Landroid/widget/Button;

    const/16 v15, 0xd

    aget-object v15, v1, v15

    check-cast v15, Landroid/widget/Button;

    const/16 v16, 0xc

    aget-object v16, v1, v16

    check-cast v16, Landroid/widget/ToggleButton;

    const/16 v16, 0xf

    aget-object v16, v1, v16

    check-cast v16, Landroid/widget/TextView;

    const/16 v17, 0x3

    aget-object v17, v1, v17

    check-cast v17, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v16}, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;-><init>(Landroid/view/View;Landroid/widget/ImageButton;Landroidx/media3/ui/PlayerView;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Lcom/google/android/material/progressindicator/CircularProgressIndicator;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;)V

    new-instance v3, Lcom/motorola/camera/PermissionCallback;

    const/4 v4, 0x7

    invoke-direct {v3, v4, v1}, Lcom/motorola/camera/PermissionCallback;-><init>(ILjava/lang/Object;)V

    iput-object v3, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->superSlowMotionTrimBarvaluesAttrChanged:Lcom/motorola/camera/PermissionCallback;

    const-wide/16 v3, -0x1

    iput-wide v3, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const/4 v3, 0x0

    aget-object v3, v17, v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v3, 0xa

    aget-object v3, v17, v3

    check-cast v3, Landroidx/constraintlayout/widget/Group;

    iput-object v3, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mboundView10:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v3, 0xb

    aget-object v3, v17, v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mboundView11:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v3, 0x9

    aget-object v3, v17, v3

    check-cast v3, Landroidx/constraintlayout/widget/Group;

    iput-object v3, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mboundView9:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingCancelButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingProgressPercentage:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingSlideshow:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionSaveButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v3, 0x7f0a0126

    invoke-virtual {v2, v3, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/generated/callback/OnClickListener;

    invoke-direct {v2, v1, v0}, Lcom/motorola/camera/generated/callback/OnClickListener;-><init>(Lcom/motorola/camera/generated/callback/OnClickListener$Listener;I)V

    iput-object v2, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mCallback4:Lcom/motorola/camera/generated/callback/OnClickListener;

    new-instance v0, Lcom/motorola/camera/generated/callback/OnClickListener;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/generated/callback/OnClickListener;-><init>(Lcom/motorola/camera/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mCallback3:Lcom/motorola/camera/generated/callback/OnClickListener;

    monitor-enter p0

    const-wide/32 v2, 0x8000

    :try_start_0
    iput-wide v2, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final _internalCallbackOnClick(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->mViewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz p0, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->playWhenReady:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->setPlayWhenReady(Z)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->mViewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->startProcessing()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final executeBindings()V
    .locals 71

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-wide v2, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->mViewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    const-wide/32 v6, 0xffff

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/32 v17, 0xc020

    const-wide/32 v19, 0xc010

    const-wide/32 v21, 0x40000000

    const-wide v23, 0x80000000L

    move-wide/from16 v25, v4

    const/4 v4, 0x3

    const-wide/32 v27, 0xc000

    const-wide/32 v29, 0xc002

    const-wide/32 v31, 0xc001

    const-wide/32 v33, 0xe008

    const-wide/32 v35, 0xc200

    const-wide/32 v37, 0xc208

    const-wide/32 v39, 0xc088

    const-wide/32 v41, 0xc008

    const-wide/32 v43, 0xc00c

    const/4 v5, 0x1

    const-wide/32 v45, 0xd000

    const/4 v8, 0x0

    const/16 v47, 0x0

    if-eqz v6, :cond_3c

    and-long v48, v2, v31

    cmp-long v6, v48, v25

    if-eqz v6, :cond_2

    if-eqz v0, :cond_0

    iget-object v6, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->playButtonSelected:Landroidx/lifecycle/MediatorLiveData;

    goto :goto_0

    :cond_0
    move-object/from16 v6, v47

    :goto_0
    invoke-virtual {v1, v8, v6}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/MutableLiveData;)V

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    move-object/from16 v6, v47

    :goto_1
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v6

    goto :goto_2

    :cond_2
    move v6, v8

    :goto_2
    and-long v48, v2, v29

    cmp-long v48, v48, v25

    if-eqz v48, :cond_5

    if-eqz v0, :cond_3

    iget-object v8, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->duration:Landroidx/lifecycle/MutableLiveData;

    goto :goto_3

    :cond_3
    move-object/from16 v8, v47

    :goto_3
    invoke-virtual {v1, v5, v8}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/MutableLiveData;)V

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    goto :goto_4

    :cond_4
    move-object/from16 v8, v47

    :goto_4
    invoke-static {v8}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v8

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    :goto_5
    and-long v49, v2, v27

    cmp-long v49, v49, v25

    if-eqz v49, :cond_6

    if-eqz v0, :cond_6

    move/from16 v49, v5

    iget v5, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->maxRange:I

    goto :goto_6

    :cond_6
    move/from16 v49, v5

    const/4 v5, 0x0

    :goto_6
    and-long v50, v2, v43

    cmp-long v50, v50, v25

    const-wide/32 v51, 0xc800

    if-eqz v50, :cond_a

    if-eqz v0, :cond_7

    iget-object v9, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingIndicatorVisible:Landroidx/lifecycle/MediatorLiveData;

    goto :goto_7

    :cond_7
    move-object/from16 v9, v47

    :goto_7
    const/4 v10, 0x2

    invoke-virtual {v1, v10, v9}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/MutableLiveData;)V

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    goto :goto_8

    :cond_8
    move-object/from16 v9, v47

    :goto_8
    invoke-static {v9}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v9

    if-eqz v50, :cond_b

    if-eqz v9, :cond_9

    const-wide v53, 0x8000000000L

    :goto_9
    or-long v2, v2, v53

    goto :goto_a

    :cond_9
    const-wide v53, 0x4000000000L

    goto :goto_9

    :cond_a
    const/4 v9, 0x0

    :cond_b
    :goto_a
    and-long v53, v2, v41

    cmp-long v10, v53, v25

    const-wide/32 v53, 0xc400

    if-eqz v10, :cond_11

    if-eqz v0, :cond_c

    iget-object v11, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->contentHidden:Landroidx/lifecycle/MutableLiveData;

    goto :goto_b

    :cond_c
    move-object/from16 v11, v47

    :goto_b
    invoke-virtual {v1, v4, v11}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/MutableLiveData;)V

    if-eqz v11, :cond_d

    invoke-virtual {v11}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    goto :goto_c

    :cond_d
    move-object/from16 v12, v47

    :goto_c
    invoke-static {v12}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v50

    if-eqz v10, :cond_f

    if-eqz v50, :cond_e

    or-long v2, v2, v23

    goto :goto_d

    :cond_e
    or-long v2, v2, v21

    :cond_f
    :goto_d
    if-eqz v50, :cond_10

    goto :goto_e

    :cond_10
    const/16 v10, 0x8

    goto :goto_f

    :cond_11
    move-object/from16 v11, v47

    move-object v12, v11

    :goto_e
    const/4 v10, 0x0

    :goto_f
    and-long v55, v2, v19

    cmp-long v50, v55, v25

    const-wide/32 v55, 0xc100

    if-eqz v50, :cond_13

    if-eqz v0, :cond_12

    iget-object v13, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingProgressPercentage:Landroidx/lifecycle/MediatorLiveData;

    goto :goto_10

    :cond_12
    move-object/from16 v13, v47

    :goto_10
    const/4 v14, 0x4

    invoke-virtual {v1, v14, v13}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/MutableLiveData;)V

    if-eqz v13, :cond_13

    invoke-virtual {v13}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    goto :goto_11

    :cond_13
    move-object/from16 v13, v47

    :goto_11
    and-long v57, v2, v17

    cmp-long v14, v57, v25

    if-eqz v14, :cond_15

    if-eqz v0, :cond_14

    iget-object v14, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->selectedRange:Landroidx/lifecycle/MutableLiveData;

    :goto_12
    const-wide/32 v57, 0xc040

    goto :goto_13

    :cond_14
    move-object/from16 v14, v47

    goto :goto_12

    :goto_13
    const/4 v15, 0x5

    invoke-virtual {v1, v15, v14}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/MutableLiveData;)V

    if-eqz v14, :cond_16

    invoke-virtual {v14}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [I

    goto :goto_14

    :cond_15
    const-wide/32 v57, 0xc040

    :cond_16
    move-object/from16 v14, v47

    :goto_14
    and-long v15, v2, v57

    cmp-long v15, v15, v25

    if-eqz v15, :cond_19

    if-eqz v0, :cond_17

    iget-object v15, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->minRange:Landroidx/lifecycle/MutableLiveData;

    goto :goto_15

    :cond_17
    move-object/from16 v15, v47

    :goto_15
    const/4 v4, 0x6

    invoke-virtual {v1, v4, v15}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/MutableLiveData;)V

    if-eqz v15, :cond_18

    invoke-virtual {v15}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    goto :goto_16

    :cond_18
    move-object/from16 v4, v47

    :goto_16
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v4

    goto :goto_17

    :cond_19
    const/4 v4, 0x0

    :goto_17
    and-long v59, v2, v39

    cmp-long v15, v59, v25

    if-eqz v15, :cond_1e

    if-eqz v0, :cond_1a

    iget-object v7, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->cancelButtonVisible:Landroidx/lifecycle/MediatorLiveData;

    :goto_18
    move-wide/from16 v59, v2

    goto :goto_19

    :cond_1a
    move-object/from16 v7, v47

    goto :goto_18

    :goto_19
    const/4 v2, 0x7

    invoke-virtual {v1, v2, v7}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/MutableLiveData;)V

    if-eqz v7, :cond_1b

    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_1a

    :cond_1b
    move-object/from16 v2, v47

    :goto_1a
    invoke-static {v2}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v15, :cond_1c

    if-eqz v2, :cond_1d

    const-wide/32 v61, 0x2000000

    :goto_1b
    or-long v59, v59, v61

    :cond_1c
    move v7, v2

    move-wide/from16 v2, v59

    goto :goto_1c

    :cond_1d
    const-wide/32 v61, 0x1000000

    goto :goto_1b

    :cond_1e
    move-wide/from16 v59, v2

    const/4 v7, 0x0

    :goto_1c
    and-long v59, v2, v55

    cmp-long v15, v59, v25

    if-eqz v15, :cond_21

    if-eqz v0, :cond_1f

    iget-object v15, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->currentFrame:Landroidx/lifecycle/MutableLiveData;

    :goto_1d
    move-wide/from16 v59, v2

    const/16 v2, 0x8

    goto :goto_1e

    :cond_1f
    move-object/from16 v15, v47

    goto :goto_1d

    :goto_1e
    invoke-virtual {v1, v2, v15}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/MutableLiveData;)V

    if-eqz v15, :cond_20

    invoke-virtual {v15}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    goto :goto_1f

    :cond_20
    move-object/from16 v3, v47

    :goto_1f
    invoke-static {v3}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v3

    goto :goto_20

    :cond_21
    move-wide/from16 v59, v2

    const/16 v2, 0x8

    const/4 v3, 0x0

    :goto_20
    and-long v61, v59, v37

    cmp-long v15, v61, v25

    if-eqz v15, :cond_2a

    if-eqz v0, :cond_22

    iget-object v2, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingPercentageVisible:Landroidx/lifecycle/MediatorLiveData;

    :goto_21
    move/from16 v61, v3

    goto :goto_22

    :cond_22
    move-object/from16 v2, v47

    goto :goto_21

    :goto_22
    const/16 v3, 0x9

    invoke-virtual {v1, v3, v2}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/MutableLiveData;)V

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_23

    :cond_23
    move-object/from16 v2, v47

    :goto_23
    invoke-static {v2}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v15, :cond_25

    if-eqz v2, :cond_24

    const-wide/32 v62, 0x20000

    :goto_24
    or-long v59, v59, v62

    goto :goto_25

    :cond_24
    const-wide/32 v62, 0x10000

    goto :goto_24

    :cond_25
    :goto_25
    and-long v62, v59, v35

    cmp-long v3, v62, v25

    if-eqz v3, :cond_27

    if-eqz v2, :cond_26

    const-wide v62, 0x800200000L

    :goto_26
    or-long v59, v59, v62

    goto :goto_27

    :cond_26
    const-wide v62, 0x400100000L

    goto :goto_26

    :cond_27
    :goto_27
    and-long v62, v59, v35

    cmp-long v3, v62, v25

    if-eqz v3, :cond_29

    xor-int/lit8 v3, v2, 0x1

    if-eqz v2, :cond_28

    iget-object v15, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingLabel:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v62, v2

    const v2, 0x7f120532

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_28

    :cond_28
    move/from16 v62, v2

    iget-object v2, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v15, 0x7f120534

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_28
    move-object v15, v2

    move-wide/from16 v69, v59

    move/from16 v59, v3

    move-wide/from16 v2, v69

    goto :goto_29

    :cond_29
    move/from16 v62, v2

    move-object/from16 v15, v47

    move-wide/from16 v2, v59

    const/16 v59, 0x0

    goto :goto_29

    :cond_2a
    move/from16 v61, v3

    move-object/from16 v15, v47

    move-wide/from16 v2, v59

    const/16 v59, 0x0

    const/16 v62, 0x0

    :goto_29
    and-long v63, v2, v53

    cmp-long v60, v63, v25

    move-wide/from16 v63, v2

    if-eqz v60, :cond_30

    if-eqz v0, :cond_2b

    iget-object v2, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingSlideshowVisible:Landroidx/lifecycle/MediatorLiveData;

    goto :goto_2a

    :cond_2b
    move-object/from16 v2, v47

    :goto_2a
    const/16 v3, 0xa

    invoke-virtual {v1, v3, v2}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/MutableLiveData;)V

    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_2b

    :cond_2c
    move-object/from16 v2, v47

    :goto_2b
    invoke-static {v2}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v60, :cond_2e

    if-eqz v2, :cond_2d

    const-wide/32 v65, 0x80000

    :goto_2c
    or-long v63, v63, v65

    goto :goto_2d

    :cond_2d
    const-wide/32 v65, 0x40000

    goto :goto_2c

    :cond_2e
    :goto_2d
    if-eqz v2, :cond_2f

    const/4 v2, 0x0

    goto :goto_2e

    :cond_2f
    const/16 v2, 0x8

    :goto_2e
    move/from16 v60, v2

    move-wide/from16 v2, v63

    goto :goto_2f

    :cond_30
    const/16 v60, 0x0

    :goto_2f
    and-long v63, v2, v51

    cmp-long v63, v63, v25

    if-eqz v63, :cond_32

    move-wide/from16 v63, v2

    if-eqz v0, :cond_31

    iget-object v2, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingPreview:Landroidx/lifecycle/MutableLiveData;

    goto :goto_30

    :cond_31
    move-object/from16 v2, v47

    :goto_30
    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/MutableLiveData;)V

    if-eqz v2, :cond_33

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    goto :goto_31

    :cond_32
    move-wide/from16 v63, v2

    :cond_33
    move-object/from16 v2, v47

    :goto_31
    and-long v65, v63, v45

    cmp-long v3, v65, v25

    if-eqz v3, :cond_36

    if-eqz v0, :cond_34

    iget-object v3, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingProgress:Landroidx/lifecycle/MediatorLiveData;

    :goto_32
    move-object/from16 v65, v2

    goto :goto_33

    :cond_34
    move-object/from16 v3, v47

    goto :goto_32

    :goto_33
    const/16 v2, 0xc

    invoke-virtual {v1, v2, v3}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/MutableLiveData;)V

    if-eqz v3, :cond_35

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    goto :goto_34

    :cond_35
    move-object/from16 v2, v47

    :goto_34
    invoke-static {v2}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v2

    goto :goto_35

    :cond_36
    move-object/from16 v65, v2

    const/4 v2, 0x0

    :goto_35
    and-long v66, v63, v33

    cmp-long v3, v66, v25

    move/from16 v66, v2

    if-eqz v3, :cond_3b

    if-eqz v0, :cond_37

    iget-object v2, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->editControlsVisible:Landroidx/lifecycle/MediatorLiveData;

    :goto_36
    move/from16 v67, v3

    goto :goto_37

    :cond_37
    move-object/from16 v2, v47

    goto :goto_36

    :goto_37
    const/16 v3, 0xd

    invoke-virtual {v1, v3, v2}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/MutableLiveData;)V

    if-eqz v2, :cond_38

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v47, v2

    check-cast v47, Ljava/lang/Boolean;

    :cond_38
    invoke-static/range {v47 .. v47}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v67, :cond_39

    if-eqz v2, :cond_3a

    const-wide v67, 0x200000000L

    :goto_38
    or-long v63, v63, v67

    :cond_39
    move-object/from16 v47, v11

    move-object/from16 v3, v65

    move v11, v8

    move v8, v5

    move/from16 v5, v66

    move/from16 v69, v61

    move/from16 v61, v2

    move-object v2, v13

    move v13, v10

    move/from16 v10, v59

    move/from16 v70, v7

    move v7, v4

    move-object v4, v14

    move-object v14, v12

    move/from16 v12, v60

    move-wide/from16 v59, v63

    move/from16 v63, v9

    move/from16 v64, v62

    move v9, v6

    move/from16 v62, v70

    move/from16 v6, v69

    goto :goto_39

    :cond_3a
    const-wide v67, 0x100000000L

    goto :goto_38

    :cond_3b
    move-object/from16 v47, v11

    move-object v2, v13

    move-object/from16 v3, v65

    move v11, v8

    move v13, v10

    move/from16 v10, v59

    move v8, v5

    move/from16 v5, v66

    move/from16 v69, v7

    move v7, v4

    move-object v4, v14

    move-object v14, v12

    move/from16 v12, v60

    move-wide/from16 v59, v63

    move/from16 v63, v9

    move/from16 v64, v62

    move v9, v6

    move/from16 v62, v69

    move/from16 v6, v61

    const/16 v61, 0x0

    goto :goto_39

    :cond_3c
    move/from16 v49, v5

    const-wide/32 v51, 0xc800

    const-wide/32 v53, 0xc400

    const-wide/32 v55, 0xc100

    const-wide/32 v57, 0xc040

    move-wide/from16 v59, v2

    move-object/from16 v2, v47

    move-object v3, v2

    move-object v4, v3

    move-object v14, v4

    move-object v15, v14

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    :goto_39
    const-wide v65, 0x8202020000L

    and-long v65, v59, v65

    cmp-long v65, v65, v25

    if-eqz v65, :cond_41

    if-eqz v0, :cond_3d

    iget-object v0, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->contentHidden:Landroidx/lifecycle/MutableLiveData;

    :goto_3a
    move-object/from16 v16, v14

    const/4 v14, 0x3

    goto :goto_3b

    :cond_3d
    move-object/from16 v0, v47

    goto :goto_3a

    :goto_3b
    invoke-virtual {v1, v14, v0}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/MutableLiveData;)V

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/Boolean;

    goto :goto_3c

    :cond_3e
    move-object/from16 v14, v16

    :goto_3c
    invoke-static {v14}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v0

    and-long v65, v59, v41

    cmp-long v14, v65, v25

    if-eqz v14, :cond_40

    if-eqz v0, :cond_3f

    or-long v21, v59, v23

    goto :goto_3d

    :cond_3f
    or-long v21, v59, v21

    goto :goto_3d

    :cond_40
    move-wide/from16 v21, v59

    :goto_3d
    xor-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :cond_41
    move-wide/from16 v21, v59

    const/4 v0, 0x0

    :goto_3e
    and-long v23, v21, v37

    cmp-long v14, v23, v25

    if-eqz v14, :cond_46

    if-eqz v64, :cond_42

    move/from16 v16, v0

    goto :goto_3f

    :cond_42
    const/16 v16, 0x0

    :goto_3f
    if-eqz v14, :cond_44

    if-eqz v16, :cond_43

    const-wide/32 v23, 0x20000000

    :goto_40
    or-long v21, v21, v23

    goto :goto_41

    :cond_43
    const-wide/32 v23, 0x10000000

    goto :goto_40

    :cond_44
    :goto_41
    if-eqz v16, :cond_45

    goto :goto_42

    :cond_45
    const/16 v14, 0x8

    goto :goto_43

    :cond_46
    :goto_42
    const/4 v14, 0x0

    :goto_43
    and-long v23, v21, v39

    cmp-long v16, v23, v25

    if-eqz v16, :cond_4b

    if-eqz v62, :cond_47

    move/from16 v23, v0

    goto :goto_44

    :cond_47
    const/16 v23, 0x0

    :goto_44
    if-eqz v16, :cond_49

    if-eqz v23, :cond_48

    const-wide v59, 0x2000000000L

    :goto_45
    or-long v21, v21, v59

    goto :goto_46

    :cond_48
    const-wide v59, 0x1000000000L

    goto :goto_45

    :cond_49
    :goto_46
    if-eqz v23, :cond_4a

    const/16 v16, 0x0

    goto :goto_47

    :cond_4a
    const/16 v16, 0x8

    :goto_47
    move/from16 v69, v16

    move/from16 v16, v0

    move/from16 v0, v69

    goto :goto_48

    :cond_4b
    move/from16 v16, v0

    const/4 v0, 0x0

    :goto_48
    and-long v23, v21, v33

    cmp-long v23, v23, v25

    if-eqz v23, :cond_50

    if-eqz v61, :cond_4c

    move/from16 v24, v16

    goto :goto_49

    :cond_4c
    const/16 v24, 0x0

    :goto_49
    if-eqz v23, :cond_4e

    if-eqz v24, :cond_4d

    const-wide/32 v59, 0x800000

    :goto_4a
    or-long v21, v21, v59

    goto :goto_4b

    :cond_4d
    const-wide/32 v59, 0x400000

    goto :goto_4a

    :cond_4e
    :goto_4b
    if-eqz v24, :cond_4f

    const/16 v23, 0x0

    goto :goto_4c

    :cond_4f
    const/16 v23, 0x8

    :goto_4c
    move/from16 v69, v23

    move/from16 v23, v6

    move/from16 v6, v69

    goto :goto_4d

    :cond_50
    move/from16 v23, v6

    const/4 v6, 0x0

    :goto_4d
    and-long v59, v21, v43

    cmp-long v24, v59, v25

    if-eqz v24, :cond_55

    if-eqz v63, :cond_51

    goto :goto_4e

    :cond_51
    const/16 v16, 0x0

    :goto_4e
    if-eqz v24, :cond_53

    if-eqz v16, :cond_52

    const-wide/32 v59, 0x8000000

    :goto_4f
    or-long v21, v21, v59

    goto :goto_50

    :cond_52
    const-wide/32 v59, 0x4000000

    goto :goto_4f

    :cond_53
    :goto_50
    if-eqz v16, :cond_54

    const/16 v48, 0x0

    goto :goto_51

    :cond_54
    const/16 v48, 0x8

    :goto_51
    move/from16 v16, v7

    move/from16 v7, v48

    goto :goto_52

    :cond_55
    move/from16 v16, v7

    const/4 v7, 0x0

    :goto_52
    and-long v43, v21, v43

    cmp-long v24, v43, v25

    if-eqz v24, :cond_56

    move/from16 v24, v8

    iget-object v8, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mboundView10:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v8, v7}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    goto :goto_53

    :cond_56
    move/from16 v24, v8

    :goto_53
    and-long v7, v21, v41

    cmp-long v7, v7, v25

    if-eqz v7, :cond_57

    iget-object v7, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mboundView11:Landroid/widget/TextView;

    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    :cond_57
    and-long v7, v21, v33

    cmp-long v7, v7, v25

    if-eqz v7, :cond_58

    iget-object v7, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mboundView9:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v7, v6}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :cond_58
    const-wide/32 v6, 0x8000

    and-long v6, v21, v6

    cmp-long v6, v6, v25

    if-eqz v6, :cond_59

    iget-object v6, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionPlayPauseButton:Landroid/widget/ImageButton;

    iget-object v7, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mCallback4:Lcom/motorola/camera/generated/callback/OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionSaveButton:Landroid/widget/Button;

    iget-object v7, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mCallback3:Lcom/motorola/camera/generated/callback/OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    iget-object v7, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->superSlowMotionTrimBarvaluesAttrChanged:Lcom/motorola/camera/PermissionCallback;

    const-string/jumbo v8, "view"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "attrChange"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getRangeListeners()Ljava/util/HashSet;

    move-result-object v6

    new-instance v8, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBarKt$setListeners$1;

    invoke-direct {v8, v7}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBarKt$setListeners$1;-><init>(Landroidx/databinding/InverseBindingListener;)V

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_59
    and-long v6, v21, v31

    cmp-long v6, v6, v25

    if-eqz v6, :cond_5a

    iget-object v6, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v9}, Landroid/view/View;->setSelected(Z)V

    :cond_5a
    and-long v6, v21, v35

    cmp-long v6, v6, v25

    if-eqz v6, :cond_5b

    iget-object v6, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {v6, v10}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    iget-object v6, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingLabel:Landroid/widget/TextView;

    invoke-static {v6, v15}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_5b
    and-long v6, v21, v45

    cmp-long v6, v6, v25

    if-eqz v6, :cond_5c

    iget-object v6, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {v6, v5}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setProgress(I)V

    :cond_5c
    and-long v5, v21, v39

    cmp-long v5, v5, v25

    if-eqz v5, :cond_5d

    iget-object v5, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingCancelButton:Landroid/widget/Button;

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5d
    and-long v5, v21, v19

    cmp-long v0, v5, v25

    if-eqz v0, :cond_5e

    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingProgressPercentage:Landroid/widget/TextView;

    invoke-static {v0, v2}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_5e
    and-long v5, v21, v37

    cmp-long v0, v5, v25

    if-eqz v0, :cond_5f

    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingProgressPercentage:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_5f
    and-long v5, v21, v53

    cmp-long v0, v5, v25

    if-eqz v0, :cond_60

    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingSlideshow:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_60
    and-long v5, v21, v51

    cmp-long v0, v5, v25

    if-eqz v0, :cond_61

    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingSlideshow:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Lcom/motorola/camera/ui/controls_2020/BindingUtilsKt;->setImageBitmapWithTransition(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    :cond_61
    and-long v2, v21, v29

    cmp-long v0, v2, v25

    if-eqz v0, :cond_62

    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const-string/jumbo v2, "view"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->setFrameCount(I)V

    :cond_62
    and-long v2, v21, v17

    cmp-long v0, v2, v25

    if-eqz v0, :cond_63

    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const-string/jumbo v2, "view"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "newValue"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getValues()[I

    move-result-object v2

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_63

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->setValues([I)V

    :cond_63
    and-long v2, v21, v27

    cmp-long v0, v2, v25

    if-eqz v0, :cond_64

    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const-string/jumbo v2, "view"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getMaximumRange()I

    move-result v2

    move/from16 v5, v24

    if-eq v2, v5, :cond_64

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->setMaximumRange(I)V

    :cond_64
    and-long v2, v21, v57

    cmp-long v0, v2, v25

    if-eqz v0, :cond_65

    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const-string/jumbo v2, "view"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getMinimumRange()I

    move-result v2

    move/from16 v4, v16

    if-eq v2, v4, :cond_65

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->setMinimumRange(I)V

    :cond_65
    and-long v2, v21, v55

    cmp-long v0, v2, v25

    if-eqz v0, :cond_66

    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const-string/jumbo v1, "view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/TrimSeekBar;->setPlayHeadFrame(I)V

    :cond_66
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final hasPendingBindings()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onFieldChange(IILjava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    check-cast p3, Landroidx/lifecycle/LiveData;

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x2000

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_1
    check-cast p3, Landroidx/lifecycle/LiveData;

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_1
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x1000

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    return v0

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :pswitch_2
    check-cast p3, Landroidx/lifecycle/MutableLiveData;

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_2
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x800

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    return v0

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :pswitch_3
    check-cast p3, Landroidx/lifecycle/LiveData;

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_3
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x400

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    return v0

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    :pswitch_4
    check-cast p3, Landroidx/lifecycle/LiveData;

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_4
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x200

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    return v0

    :catchall_4
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw p1

    :pswitch_5
    check-cast p3, Landroidx/lifecycle/MutableLiveData;

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_5
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x100

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    return v0

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw p1

    :pswitch_6
    check-cast p3, Landroidx/lifecycle/LiveData;

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_6
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x80

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    return v0

    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw p1

    :pswitch_7
    check-cast p3, Landroidx/lifecycle/MutableLiveData;

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_7
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x40

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    return v0

    :catchall_7
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw p1

    :pswitch_8
    check-cast p3, Landroidx/lifecycle/MutableLiveData;

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_8
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x20

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    return v0

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw p1

    :pswitch_9
    check-cast p3, Landroidx/lifecycle/LiveData;

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_9
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x10

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    return v0

    :catchall_9
    move-exception p1

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw p1

    :pswitch_a
    check-cast p3, Landroidx/lifecycle/MutableLiveData;

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_a
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x8

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    return v0

    :catchall_a
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    throw p1

    :pswitch_b
    check-cast p3, Landroidx/lifecycle/LiveData;

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_b
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x4

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    return v0

    :catchall_b
    move-exception p1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    throw p1

    :pswitch_c
    check-cast p3, Landroidx/lifecycle/MutableLiveData;

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_c
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x2

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    return v0

    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    throw p1

    :pswitch_d
    check-cast p3, Landroidx/lifecycle/LiveData;

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_d
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x1

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    return v0

    :catchall_d
    move-exception p1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    throw p1

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setViewModel(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;)V
    .locals 4

    iput-object p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->mViewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-enter p0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

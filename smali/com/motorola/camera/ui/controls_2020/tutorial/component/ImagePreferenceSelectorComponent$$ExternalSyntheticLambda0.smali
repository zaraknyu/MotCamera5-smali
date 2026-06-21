.class public final synthetic Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;->Companion:Landroidx/transition/Transition$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "get(...)"

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->IMAGE_PREFERENCE_SELECTOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v4

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-nez v10, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-nez v11, :cond_2

    sget-object v10, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;->NATURAL:Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v10, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v2, :cond_4

    sget-object v10, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;->GOOGLE_AUTO_ENHANCE:Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_2
    if-nez v10, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v3, :cond_6

    sget-object v10, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;->AI_PERSONAL_COLOR_TONE:Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    :goto_3
    if-nez v10, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v1, :cond_0

    sget-object v9, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;->AI_PERSONAL_CUSTOMIZE_COLOR_TONE:Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v2

    goto :goto_0

    :cond_8
    iget-object v1, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eqz v9, :cond_9

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v4, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance v0, Lkotlin/Pair;

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    new-instance v0, Lkotlin/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_4
    iget-object v1, v0, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v0, v0, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v2, :cond_d

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_5

    :cond_a
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;

    iget v6, v6, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/ImagePreferenceSelectorModeConfig;->value:I

    if-ne v6, v3, :cond_b

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->pageChangeListener:Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$pageChangeListener$1;

    iput-boolean v4, v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$pageChangeListener$1;->enableAnimate:Z

    invoke-virtual {v2, v3}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_c
    :goto_5
    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/IMagePreferenceSelectorAdapter;

    invoke-direct {v3, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/IMagePreferenceSelectorAdapter;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v2, v0, v4}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->show()V

    :cond_d
    return-void

    :pswitch_0
    const/16 v0, 0xbb8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SECONDARY_CAMERA_TYPES:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAIPersonalColorToneFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    sget-object v0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->mWaitingCompletionSet:Ljava/util/HashSet;

    const-class v9, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;

    monitor-enter v9

    :try_start_0
    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AI_PERSONAL_COLOR_TONE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_f

    monitor-exit v9

    :goto_6
    move v0, v4

    goto :goto_8

    :cond_f
    :try_start_1
    invoke-static {}, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->checkTrainingModuleState()V

    sget-object v0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/colortone/AIPersonalColorToneManager;

    iget-object v0, v0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->aiColorToneModuleInfo:Ljava/util/concurrent/CompletableFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_10

    monitor-exit v9

    goto :goto_6

    :cond_10
    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/colortone/AIPersonalColorToneCustomizeModuleInfo;

    if-eqz v0, :cond_11

    iget-boolean v0, v0, Lcom/motorola/camera/colortone/AIPersonalColorToneCustomizeModuleInfo;->mHasTrainingCompleteModule:Z
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_11

    move v0, v2

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_14

    :catch_0
    move-exception v0

    :try_start_3
    const-string v10, "AIPersonalColorToneManager"

    const-string v11, "Exception while check hasTrainingCompleteModule, return false"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_11
    move v0, v4

    :goto_7
    monitor-exit v9

    :goto_8
    if-eqz v0, :cond_12

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->IMAGE_PREFERENCE_SELECTOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v8}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCameraTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/settings/CameraType;

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->IMAGE_PREFERENCE_SELECTOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v9, v10, v8}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    goto :goto_9

    :cond_13
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getImagePreferenceSelectorValue()I

    move-result v0

    if-ne v0, v1, :cond_14

    move v0, v2

    goto :goto_a

    :cond_14
    move v0, v4

    :goto_a
    if-eqz v0, :cond_15

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    move v0, v2

    goto :goto_b

    :cond_15
    move v0, v4

    :goto_b
    if-eqz v0, :cond_17

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->updateImagePreferenceSelector(I)V

    goto :goto_c

    :cond_16
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->updateImagePreferenceSelector(I)V

    :cond_17
    :goto_c
    const-class v3, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;

    monitor-enter v3

    :try_start_4
    invoke-static {}, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->checkTrainingModuleState()V

    sget-object v0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/colortone/AIPersonalColorToneManager;

    iget-object v0, v0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->aiColorToneModuleInfo:Ljava/util/concurrent/CompletableFuture;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v6, 0x0

    if-nez v0, :cond_18

    monitor-exit v3

    goto :goto_d

    :cond_18
    :try_start_5
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/colortone/AIPersonalColorToneCustomizeModuleInfo;
    :try_end_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v3

    move-object v6, v0

    goto :goto_d

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto/16 :goto_13

    :catch_1
    move-exception v0

    :try_start_6
    const-string v7, "AIPersonalColorToneManager"

    const-string v8, "Exception while loadColorToneModuleInfo"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v3

    :goto_d
    if-nez v6, :cond_19

    goto/16 :goto_12

    :cond_19
    iget-boolean v0, v6, Lcom/motorola/camera/colortone/AIPersonalColorToneCustomizeModuleInfo;->mHasTrainingCompleteModule:Z

    if-eqz v0, :cond_1a

    iget v0, v6, Lcom/motorola/camera/colortone/AIPersonalColorToneCustomizeModuleInfo;->mModuleVersion:I

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AI_PERSONAL_COLOR_TONE_CUSTOMIZE_MODULE_VERSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v0, v7, :cond_1a

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->updateImagePreferenceSelector(I)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v7, 0x7f120208

    invoke-direct {v3, v7}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    iput-object v5, v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastDuration:Ljava/lang/Integer;

    invoke-static {v3, v0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    :cond_1a
    iget-boolean v0, v6, Lcom/motorola/camera/colortone/AIPersonalColorToneCustomizeModuleInfo;->mHasModuleInTraining:Z

    if-eqz v0, :cond_23

    iget v0, v6, Lcom/motorola/camera/colortone/AIPersonalColorToneCustomizeModuleInfo;->mTrainingProgress:I

    if-lez v0, :cond_1b

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_PERSONAL_COLOR_TONE_CUSTOMIZE_MODULE_TRAINING_PROGRESS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_1b
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f120209

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getString(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v3, v6, Lcom/motorola/camera/colortone/AIPersonalColorToneCustomizeModuleInfo;->mTrainingTimeType:I

    if-nez v3, :cond_1c

    move v6, v2

    goto :goto_e

    :cond_1c
    move v6, v4

    :goto_e
    if-eqz v6, :cond_1d

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v3, v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(Ljava/lang/String;)V

    iput-object v5, v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastDuration:Ljava/lang/Integer;

    :goto_f
    invoke-static {v3, v0, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    goto :goto_11

    :cond_1d
    if-ne v3, v2, :cond_1e

    goto :goto_10

    :cond_1e
    move v2, v4

    :goto_10
    if-eqz v2, :cond_1f

    if-lez v0, :cond_20

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v3, v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(Ljava/lang/String;)V

    iput-object v5, v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastDuration:Ljava/lang/Integer;

    goto :goto_f

    :cond_1f
    const-string v0, "ImagePreferenceSelectorComponent"

    const-string v1, "invalid training time type"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    :goto_11
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->trainingStateReceiver:Lcom/motorola/camera/SecureCamera$1;

    if-nez v0, :cond_21

    new-instance v0, Lcom/motorola/camera/SecureCamera$1;

    const/16 v1, 0x12

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/SecureCamera$1;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->trainingStateReceiver:Lcom/motorola/camera/SecureCamera$1;

    :cond_21
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->trainingStateReceiver:Lcom/motorola/camera/SecureCamera$1;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string p0, "com.motorola.camera.COLOR_TONE_TRAINING_STATE"

    invoke-virtual {v3, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.motorola.camera.permission.COLOR_TONE_TRAINING_STATE"

    if-eqz v1, :cond_23

    if-nez v2, :cond_22

    goto :goto_12

    :cond_22
    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    :cond_23
    :goto_12
    return-void

    :goto_13
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p0

    :goto_14
    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0

    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->onImagePreferenceSelectorPageAction(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

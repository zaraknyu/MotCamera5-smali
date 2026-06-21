.class public final synthetic Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 33

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->beautyToggle:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarMarginDimen()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :pswitch_0
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    :pswitch_1
    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->enableFaceBeauty(Z)V

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->notifyFaceBeauty(Z)V

    iput-boolean v4, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->stateHide:Z

    iput-boolean v3, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->enterSingleShot:Z

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    :pswitch_2
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->manualPanel:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    if-eqz v1, :cond_2

    iget-object v6, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->features:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    iget v7, v7, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->default:I

    invoke-interface {v5}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v8

    invoke-virtual {v1, v7, v8}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->modifyAdjustment(IZ)V

    iget-object v8, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->manualPanel:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->getRestorePosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    sget-object v8, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;->DISABLE:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v8, v6, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->state:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->notifyChild(I)V

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_SMART_ADJUSTMENT_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    iget v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->currentFeature:I

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->defaultChild(I)V

    iput v4, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->currentFeature:I

    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->clickChild(I)V

    iget v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->currentFeature:I

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->getItemData(I)Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    move-result-object v1

    invoke-interface {v5}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->displayMin:I

    iget v1, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->displayMax:I

    invoke-virtual {v0, v2, v1, v7, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->enableSeek(IIIZ)V

    :cond_2
    return-void

    :pswitch_3
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    return-void

    :pswitch_4
    iput-boolean v3, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->isShowSeek:Z

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->enableSeek(IIIZ)V

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->manualPanel:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    if-eqz v1, :cond_4

    iget-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->isToningExpand:Z

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->currentToningFeature:I

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->updateToningChildState(I)V

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->changeResource(Z)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->updateRestoreState()V

    iput v3, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->currentToningFeature:I

    iput-boolean v3, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->isToningExpand:Z

    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->TOGGLE_TAP_PREVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    :pswitch_5
    iput-boolean v4, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->disableClick:Z

    return-void

    :pswitch_6
    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->enableFaceBeauty(Z)V

    return-void

    :pswitch_7
    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->enableFaceBeauty(Z)V

    return-void

    :pswitch_8
    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->enableFaceBeauty(Z)V

    return-void

    :pswitch_9
    iput-boolean v3, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->stateHide:Z

    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->enterSingleShot:Z

    if-nez v1, :cond_24

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyComponentAvailable()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->manualPanel:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    if-eqz v1, :cond_23

    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v5}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->features:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    iget v8, v8, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->default:I

    if-eqz v8, :cond_5

    :goto_1
    move/from16 v16, v4

    goto/16 :goto_13

    :cond_5
    sget-object v8, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "getCurrentCameraId(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v3, v5}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->getDefaultFeaturesFromCache(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_1

    :cond_6
    const/4 v8, -0x1

    invoke-static {v8, v5}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->parseFeatures(ILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyMeiSheVersion()Z

    move-result v8

    const-string v9, "fast-adjustment"

    const-string/jumbo v10, "slim-face"

    const-string v11, "big-eyes"

    const-string/jumbo v12, "smoothing"

    const-string/jumbo v13, "toning"

    if-nez v8, :cond_8

    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    :cond_8
    sget-object v8, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v8, v8, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFaceBeautyUi:Ljava/util/HashMap;

    if-eqz v8, :cond_7

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    const-string v15, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, kotlin.Int>"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Ljava/util/HashMap;

    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Ljava/util/HashMap;

    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Ljava/util/HashMap;

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Ljava/util/HashMap;

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Ljava/util/HashMap;

    sget-object v14, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    :goto_2
    sget-object v14, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FIRST_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v14

    iget-object v14, v14, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v15, "getValue(...)"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v15, "toning-type"

    invoke-virtual {v5, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->BEAUTY_ORDER:[Ljava/lang/String;

    move/from16 v16, v4

    array-length v4, v2

    move/from16 v17, v3

    :goto_3
    if-ge v3, v4, :cond_20

    move-object/from16 p0, v2

    aget-object v2, p0, v3

    move/from16 v29, v3

    const-string v3, "original"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->TAG:Ljava/lang/String;

    new-instance v18, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    sget-object v20, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    const v27, 0x7f1201df

    const/16 v28, 0x0

    const-string v19, "original"

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const v26, 0x7f0801ae

    invoke-direct/range {v18 .. v28}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;-><init>(Ljava/lang/String;Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;IIIIIIIZ)V

    move-object/from16 v2, v18

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_4
    move/from16 v30, v4

    move-object/from16 v31, v6

    move/from16 v32, v14

    goto/16 :goto_12

    :cond_a
    const-string/jumbo v3, "restore"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->TAG:Ljava/lang/String;

    new-instance v18, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    sget-object v20, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;->DISABLE:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    const v27, 0x7f1201e0

    const/16 v28, 0x0

    const-string/jumbo v19, "restore"

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const v26, 0x7f08034a

    invoke-direct/range {v18 .. v28}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;-><init>(Ljava/lang/String;Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;IIIIIIIZ)V

    move-object/from16 v2, v18

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    if-eqz v15, :cond_c

    goto :goto_4

    :cond_c
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;

    move/from16 v30, v4

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->BEAUTY_FEATURE_DISPLAY_RANGE:Ljava/lang/Object;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v8, :cond_1c

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    move/from16 v18, v4

    const-string v4, "max"

    move-object/from16 v31, v6

    const-string v6, "min"

    sparse-switch v18, :sswitch_data_0

    :goto_5
    move/from16 v32, v14

    goto/16 :goto_e

    :sswitch_0
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_d

    goto :goto_5

    :cond_d
    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move/from16 v32, v14

    move-object/from16 v14, v18

    check-cast v14, Ljava/util/HashMap;

    if-eqz v14, :cond_e

    invoke-virtual {v14, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    goto :goto_6

    :cond_e
    const/4 v6, 0x0

    :goto_6
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    if-eqz v14, :cond_f

    invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    goto :goto_7

    :cond_f
    const/4 v4, 0x0

    :goto_7
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    filled-new-array {v6, v4}, [Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_11

    :sswitch_1
    move/from16 v32, v14

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    goto/16 :goto_e

    :cond_10
    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    if-eqz v14, :cond_11

    invoke-virtual {v14, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    goto :goto_8

    :cond_11
    const/4 v6, 0x0

    :goto_8
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    if-eqz v14, :cond_12

    invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    goto :goto_9

    :cond_12
    const/4 v4, 0x0

    :goto_9
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    filled-new-array {v6, v4}, [Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_11

    :sswitch_2
    move/from16 v32, v14

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_13

    goto/16 :goto_e

    :cond_13
    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    if-eqz v14, :cond_14

    invoke-virtual {v14, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    goto :goto_a

    :cond_14
    const/4 v6, 0x0

    :goto_a
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    if-eqz v14, :cond_15

    invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    goto :goto_b

    :cond_15
    const/4 v4, 0x0

    :goto_b
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    filled-new-array {v6, v4}, [Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_11

    :sswitch_3
    move/from16 v32, v14

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_16

    goto :goto_e

    :cond_16
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    if-eqz v14, :cond_17

    invoke-virtual {v14, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    goto :goto_c

    :cond_17
    const/4 v6, 0x0

    :goto_c
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    if-eqz v14, :cond_18

    invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    goto :goto_d

    :cond_18
    const/4 v4, 0x0

    :goto_d
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    filled-new-array {v6, v4}, [Ljava/lang/Integer;

    move-result-object v4

    goto :goto_11

    :sswitch_4
    move/from16 v32, v14

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_19

    :goto_e
    const/4 v4, 0x0

    goto :goto_11

    :cond_19
    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    if-eqz v14, :cond_1a

    invoke-virtual {v14, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    goto :goto_f

    :cond_1a
    const/4 v6, 0x0

    :goto_f
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    if-eqz v14, :cond_1b

    invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    goto :goto_10

    :cond_1b
    const/4 v4, 0x0

    :goto_10
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    filled-new-array {v6, v4}, [Ljava/lang/Integer;

    move-result-object v4

    goto :goto_11

    :cond_1c
    move-object/from16 v31, v6

    move/from16 v32, v14

    :goto_11
    if-nez v4, :cond_1d

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Integer;

    aput-object v31, v4, v17

    aput-object v31, v4, v16

    :cond_1d
    check-cast v4, [Ljava/lang/Integer;

    aget-object v6, v4, v17

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v24

    aget-object v4, v4, v16

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v25

    new-instance v18, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    sget-object v20, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    iget v4, v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;->value:I

    iget v6, v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;->min:I

    iget v3, v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;->max:I

    sget-object v14, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->BEAUTY_FEATURE_DRAWABLE:Ljava/lang/Object;

    invoke-interface {v14, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v26

    sget-object v14, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->BEAUTY_FEATURE_TEXT:Ljava/lang/Object;

    invoke-interface {v14, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v27

    const/16 v28, 0x1

    move-object/from16 v19, v2

    move/from16 v23, v3

    move/from16 v21, v4

    move/from16 v22, v6

    invoke-direct/range {v18 .. v28}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;-><init>(Ljava/lang/String;Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;IIIIIIIZ)V

    move-object/from16 v3, v18

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->default:I

    if-nez v32, :cond_1e

    goto :goto_12

    :cond_1e
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_SMART_ADJUSTMENT_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_1f
    :goto_12
    add-int/lit8 v3, v29, 0x1

    move-object/from16 v2, p0

    move/from16 v4, v30

    move-object/from16 v6, v31

    move/from16 v14, v32

    goto/16 :goto_3

    :cond_20
    move/from16 v32, v14

    move/from16 v2, v17

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->changeResource(Z)V

    if-eqz v15, :cond_21

    invoke-virtual {v5, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v5, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;

    iget-object v4, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->toningFeatures:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->getToningFeatures()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->toningFeatures:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;->value:I

    iput v2, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->value:I

    iget v2, v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;->min:I

    iput v2, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->dataMin:I

    iget v2, v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FeatureData;->max:I

    iput v2, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->dataMax:I

    iget-boolean v2, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->canParse:Z

    if-eqz v2, :cond_21

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->toDisplay()I

    move-result v2

    iput v2, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->default:I

    :cond_21
    if-eqz v32, :cond_22

    invoke-static {v5}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->updateFeatureSettings(Ljava/util/HashMap;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FIRST_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_22
    :goto_13
    move/from16 v1, v16

    goto :goto_14

    :cond_23
    move v1, v4

    :goto_14
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->enableFaceBeauty(Z)V

    const/4 v2, 0x0

    goto :goto_15

    :cond_24
    move v1, v4

    move v2, v3

    :goto_15
    iput-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->enterSingleShot:Z

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->seekSlider:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/BeautySeekBar;

    if-eqz v3, :cond_25

    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_25
    iput-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->disableClick:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    :sswitch_data_0
    .sparse-switch
        -0x7690e48c -> :sswitch_4
        -0x5a241082 -> :sswitch_3
        -0x33be0e51 -> :sswitch_2
        -0x232ab313 -> :sswitch_1
        0x290e810f -> :sswitch_0
    .end sparse-switch
.end method

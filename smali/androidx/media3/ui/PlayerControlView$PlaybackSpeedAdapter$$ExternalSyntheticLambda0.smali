.class public final synthetic Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(ILcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda0;->f$1:I

    iput-object p2, p0, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;II)V
    .locals 0

    .line 2
    iput p3, p0, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iput p2, p0, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda0;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    iget v0, p0, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyAdapter;

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyAdapter;->listener:Lcom/google/android/gms/tasks/zzb;

    if-eqz v0, :cond_15

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->listener:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView$OnItemClickListener;

    if-eqz p1, :cond_15

    check-cast p1, Lcom/motorola/camera/SecureDataHelper;

    iget-object p1, p1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;

    iget-boolean v0, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->isToningExpand:Z

    iget-object v1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    iget p0, p0, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda0;->f$1:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_c

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->manualPanel:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    if-eqz v0, :cond_14

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->getItemData(I)Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->key:Ljava/lang/String;

    const-string v6, "original"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iput v4, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->currentFeature:I

    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->manualPanel:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->features:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->state:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-ne v0, v5, :cond_0

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->updateChildrenState(I)V

    invoke-virtual {p1, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->setFaceBeautyState(I)V

    invoke-virtual {p1, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->setImageDrawable(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->updateChildrenState(I)V

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->setFaceBeautyState(I)V

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->setImageDrawable(I)V

    :cond_1
    :goto_0
    invoke-virtual {p1, v4, v4, v4, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->enableSeek(IIIZ)V

    goto/16 :goto_7

    :cond_2
    const-string/jumbo v6, "restore"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->manualPanel:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->features:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->state:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    goto :goto_1

    :cond_3
    move-object p0, v3

    :goto_1
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;->DISABLE:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    if-ne p0, v0, :cond_4

    goto/16 :goto_7

    :cond_4
    new-instance p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;-><init>()V

    const v0, 0x7f1200b1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f1200af

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->messageHTML:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeOnCancel:Z

    new-instance v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const p1, 0x7f1200b2

    iput p1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    new-instance p1, Lcom/motorola/camera/utility/AppExtensionsKt$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lcom/motorola/camera/utility/AppExtensionsKt$$ExternalSyntheticLambda0;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const p1, 0x7f1200b0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_5
    const-string/jumbo v6, "toning-type"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-boolean v5, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->isToningExpand:Z

    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->manualPanel:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    if-eqz p0, :cond_14

    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->changeResource(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->toningFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v4, v0, :cond_6

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->updateToningChildState(I)V

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->notifyChild(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->getFaceBeautyToningType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->getFaceBeautyToning(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->getToningFeature()Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    move-result-object p0

    iget v4, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->displayMin:I

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->displayMax:I

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v1

    xor-int/2addr v1, v5

    invoke-virtual {p1, v4, p0, v2, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->enableSeek(IIIZ)V

    add-int/2addr v0, v5

    iput v0, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->currentToningFeature:I

    goto/16 :goto_7

    :cond_7
    iput p0, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->currentFeature:I

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->getFaceBeautyState()I

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->setFaceBeautyState(I)V

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->setImageDrawable(I)V

    :cond_8
    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->manualPanel:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    if-eqz v0, :cond_14

    iget-object v6, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->features:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v5

    :goto_3
    if-ge v4, v6, :cond_a

    if-ne v4, p0, :cond_9

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->clickChild(I)V

    goto :goto_4

    :cond_9
    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->defaultChild(I)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_a
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->updateRestoreState()V

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->getFaceBeautyUiData(I)I

    move-result v4

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->getItemData(I)Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    move-result-object p0

    iget v6, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->displayMin:I

    iget v7, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->displayMax:I

    invoke-virtual {p1, v6, v7, v4, v5}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->enableSeek(IIIZ)V

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->seekText:Landroid/widget/TextView;

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->text:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_b
    iput-boolean v5, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->isShowSeek:Z

    goto/16 :goto_7

    :cond_c
    if-nez p0, :cond_d

    iput v4, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->currentToningFeature:I

    invoke-virtual {p1, v4, v4, v4, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->enableSeek(IIIZ)V

    iput-boolean v4, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->isToningExpand:Z

    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->manualPanel:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    if-eqz p0, :cond_14

    iget p1, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->currentToningFeature:I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->updateToningChildState(I)V

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->changeResource(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->updateRestoreState()V

    goto/16 :goto_7

    :cond_d
    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->manualPanel:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    if-eqz v0, :cond_14

    iget v4, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->currentToningFeature:I

    if-ne v4, p0, :cond_f

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v1

    if-eqz v1, :cond_14

    add-int/lit8 v1, p0, -0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->getFaceBeautyToning(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->getToningFeature()Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    move-result-object v4

    iget v6, v4, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->displayMin:I

    iget v4, v4, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->displayMax:I

    invoke-virtual {p1, v6, v4, v1, v5}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->enableSeek(IIIZ)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->seekText:Landroid/widget/TextView;

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->toningFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->text:I

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    iput-boolean v5, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->isShowSeek:Z

    goto :goto_7

    :cond_f
    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->toningFeatures:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v5

    :goto_5
    if-ge v6, v4, :cond_12

    if-ne v6, p0, :cond_10

    sget-object v7, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;->CLICKED:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    goto :goto_6

    :cond_10
    sget-object v7, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    :goto_6
    iget-object v8, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->toningFeatures:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    iget-object v9, v8, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->state:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    if-eq v9, v7, :cond_11

    iput-object v7, v8, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->state:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyFeatureState;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->notifyChild(I)V

    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_12
    iput p0, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->currentToningFeature:I

    add-int/lit8 v4, p0, -0x1

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->getFaceBeautyToning(I)I

    move-result v6

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->getToningFeature()Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    move-result-object v7

    iget v8, v7, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->displayMin:I

    iget v7, v7, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->displayMax:I

    invoke-virtual {p1, v8, v7, v6, v5}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->enableSeek(IIIZ)V

    invoke-virtual {v0, v4, v6}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->setFaceBeautyToning(II)V

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->seekText:Landroid/widget/TextView;

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->toningFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->text:I

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    iput-boolean v5, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->isShowSeek:Z

    :cond_14
    :goto_7
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_TIMEOUT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0, p1, v3}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_15
    return-void

    :pswitch_0
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mListener:Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$OnItemClickListener;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    sget v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->ENABLE_ID:I

    iget p0, p0, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda0;->f$1:I

    if-ne v1, p0, :cond_16

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->closeSliderBar()V

    goto :goto_a

    :cond_16
    iget v1, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSettingSize:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne p0, v1, :cond_17

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isExposureCompDisabled()Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v2, 0x7f1203c7

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    sget-object v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->CENTER:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-object v2, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    invoke-static {v1, p0, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    goto :goto_a

    :cond_17
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v5, v3

    :goto_8
    if-ge v5, v4, :cond_1a

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    if-eqz v6, :cond_19

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v6, :cond_19

    if-ne v5, p0, :cond_18

    move v7, v2

    goto :goto_9

    :cond_18
    move v7, v3

    :goto_9
    invoke-virtual {v6, v7}, Landroid/view/View;->setSelected(Z)V

    :cond_19
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_1a
    sput p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->ENABLE_ID:I

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->updateSeekBarLayout(I)V

    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mProPanel:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p0, :cond_1b

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1b
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mResetButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_1c

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1c
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->notifyProModeSlider(Ljava/lang/Boolean;)V

    :goto_a
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :pswitch_1
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast p1, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

    iget-object v0, p1, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->this$0:Landroidx/media3/ui/PlayerControlView;

    iget v1, p1, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->selectedIndex:I

    iget p0, p0, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda0;->f$1:I

    if-eq p0, v1, :cond_1d

    iget-object p1, p1, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->playbackSpeeds:[F

    aget p0, p1, p0

    invoke-static {v0, p0}, Landroidx/media3/ui/PlayerControlView;->access$4100(Landroidx/media3/ui/PlayerControlView;F)V

    :cond_1d
    iget-object p0, v0, Landroidx/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

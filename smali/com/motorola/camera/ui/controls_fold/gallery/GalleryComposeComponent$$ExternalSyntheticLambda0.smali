.class public final synthetic Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;
.implements Lcom/google/android/gms/tasks/OnSuccessListener;
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(Lcom/motorola/camera/ui/controls_fold/gallery/ItemAddAnimationType;Lcom/motorola/camera/CameraData;)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;->SCALE_ANIMATION:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;

    const-string v1, "cameraData"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->updateViewState(ZLcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->itemIdList:Ljava/util/List;

    invoke-virtual {p2}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->updateViewState(ZLcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$TriggerType;)V

    return-void
.end method

.method public onClick(Lcom/motorola/camera/ui/widgets/AlertPopup;)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU_LIST:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->setMenuOrder(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateLayout$4()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->moveSlider(Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->moveTalkback()V

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_MENU:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/AlertPopup;->dismiss()V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onComplete(Lcom/google/android/gms/tasks/zzw;)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/utility/InAppUpdateUtils;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/zzw;->isSuccessful()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->onStateUpdateChange:Landroidx/room/InvalidationTracker$implementation$1;

    new-instance p1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;

    sget-object v0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;->RETRY_UPDATE_FAILED:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;

    const/4 v1, 0x5

    invoke-direct {p1, v0, v1}, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;-><init>(Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateAvailability;I)V

    invoke-virtual {p0, p1}, Landroidx/room/InvalidationTracker$implementation$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "InAppUpdateUtils"

    const-string p1, "Failed to refresh update info before starting update"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/utility/InAppUpdateUtils$$ExternalSyntheticLambda0;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/utility/InAppUpdateUtils$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/utility/InAppUpdateUtils$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/utility/InAppUpdateUtils$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

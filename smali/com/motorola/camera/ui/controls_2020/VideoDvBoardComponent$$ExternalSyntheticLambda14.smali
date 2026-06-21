.class public final synthetic Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda14;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda14;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda14;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent$$ExternalSyntheticLambda14;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;

    packed-switch p1, :pswitch_data_0

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mFsmIdle:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    const-string p1, "mEventHandler"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzki;->toggleRatioAndDispatch(Lcom/motorola/camera/EventListener;)V

    :goto_0
    return-void

    :pswitch_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->animateFade(Z)V

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->DV_POSTURE_CHANGE:Lcom/motorola/camera/Notifier$TYPE;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mIsDvPosture:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mRecording:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mEnterDvMode:I

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mEnterDualFirstUse:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_EXTERNAL_DISPLAY_IN_VIDEO_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mEnterDualFirstUse:Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->restoreDualForVideo()V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->dispatchDvExit()V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

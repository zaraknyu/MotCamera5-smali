.class public final synthetic Lcom/motorola/camera/Camera$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/Camera;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/Camera;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda12;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda12;->f$0:Lcom/motorola/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/motorola/camera/ui/widgets/AlertPopup;)V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda12;->$r8$classId:I

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PERMISSION_RESULTS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iget-object p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda12;->f$0:Lcom/motorola/camera/Camera;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_REQUEST_DND_PERMISSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    invoke-virtual {p0, v0}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_0
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/AlertPopup;->dismiss()V

    return-void

    :pswitch_0
    sget-object p1, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xe

    invoke-direct {v0, p1, v4, v2, v3}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;IILandroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/Camera;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_REQUEST_DND_PERMISSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p0, :cond_1

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p1, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    invoke-virtual {p0, p1}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent;

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent;->targetFeature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    check-cast p2, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;

    new-instance v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

    const/16 v1, 0x13

    invoke-direct {v0, p2, p1, p0, v1}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

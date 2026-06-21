.class public final Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field public static final INTENT_FILTER:Landroid/content/IntentFilter;


# instance fields
.field public final dialog:Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;

.field public onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public registered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;->dialog:Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;->registered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;->dialog:Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0, p0}, Lcom/motorola/camera/shared/ReceiverUtil;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;->registered:Z

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_2
    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;->registered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;->dialog:Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0, p0}, Lcom/motorola/camera/shared/ReceiverUtil;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;->registered:Z

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_2
    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;->dialog:Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

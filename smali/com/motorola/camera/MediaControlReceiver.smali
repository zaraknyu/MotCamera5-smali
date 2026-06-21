.class public Lcom/motorola/camera/MediaControlReceiver;
.super Lcom/motorola/camera/CameraIntentReceiver;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/CameraIntentReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityRunning(Landroid/content/Intent;)V
    .locals 1

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->MEDIA_CONTROL:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "motorola.intent.extra.CALLER"

    const-string v1, "moto-voice"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/CameraIntentReceiver;->onActivityStopped(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

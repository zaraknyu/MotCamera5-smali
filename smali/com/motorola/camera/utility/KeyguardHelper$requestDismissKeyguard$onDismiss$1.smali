.class public final Lcom/motorola/camera/utility/KeyguardHelper$requestDismissKeyguard$onDismiss$1;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "SourceFile"


# instance fields
.field public final synthetic $callback:Lcom/motorola/camera/utility/ColorUtil;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/utility/ColorUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/utility/KeyguardHelper$requestDismissKeyguard$onDismiss$1;->$callback:Lcom/motorola/camera/utility/ColorUtil;

    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissCancelled()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/utility/KeyguardHelper$requestDismissKeyguard$onDismiss$1;->$callback:Lcom/motorola/camera/utility/ColorUtil;

    invoke-virtual {p0}, Lcom/motorola/camera/utility/ColorUtil;->onDismissCancelled()V

    return-void
.end method

.method public final onDismissError()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/utility/KeyguardHelper$requestDismissKeyguard$onDismiss$1;->$callback:Lcom/motorola/camera/utility/ColorUtil;

    invoke-virtual {p0}, Lcom/motorola/camera/utility/ColorUtil;->onDismissError()V

    return-void
.end method

.method public final onDismissSucceeded()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/utility/KeyguardHelper$requestDismissKeyguard$onDismiss$1;->$callback:Lcom/motorola/camera/utility/ColorUtil;

    invoke-virtual {p0}, Lcom/motorola/camera/utility/ColorUtil;->onDismissSucceeded()V

    return-void
.end method

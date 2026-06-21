.class public final Lcom/motorola/camera/service/ProcessingPriorityService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/motorola/camera/service/ProcessingPriorityService;",
        "Landroid/app/Service;",
        "<init>",
        "()V",
        "com/google/android/gms/internal/base/zau",
        "MotCamera5-v10.0.47.24_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public messenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    iget-object p1, p0, Lcom/motorola/camera/service/ProcessingPriorityService;->messenger:Landroid/os/Messenger;

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Messenger;

    new-instance v0, Lcom/google/android/gms/internal/base/zau;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/base/zau;-><init>(Landroid/os/Looper;IZ)V

    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/motorola/camera/service/ProcessingPriorityService;->messenger:Landroid/os/Messenger;

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/service/ProcessingPriorityService;->messenger:Landroid/os/Messenger;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "messenger"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

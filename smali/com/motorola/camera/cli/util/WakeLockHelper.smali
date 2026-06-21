.class public final Lcom/motorola/camera/cli/util/WakeLockHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Landroidx/activity/contextaware/ContextAwareHelper;


# instance fields
.field public final mMainWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/activity/contextaware/ContextAwareHelper;

    sget-object v1, Lcom/motorola/camera/cli/util/WakeLockHelper$Companion$1;->INSTANCE:Lcom/motorola/camera/cli/util/WakeLockHelper$Companion$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroidx/activity/contextaware/ContextAwareHelper;->listeners:Ljava/io/Serializable;

    sput-object v0, Lcom/motorola/camera/cli/util/WakeLockHelper;->Companion:Landroidx/activity/contextaware/ContextAwareHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    if-eqz p1, :cond_0

    const v0, 0x1000001a

    sget v1, Lcom/motorola/camera/reflect/PowerManagerFW;->ACQUIRE_CAUSES_CLI_WAKEUP:I

    or-int/2addr v0, v1

    const-string v1, "motcamera:cameracli:main"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/motorola/camera/cli/util/WakeLockHelper;->mMainWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    :cond_1
    return-void
.end method

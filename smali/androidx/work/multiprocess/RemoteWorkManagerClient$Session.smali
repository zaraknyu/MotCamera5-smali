.class public final Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

.field public final mFuture:Landroidx/work/impl/utils/futures/SettableFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "RemoteWMgr.Connection"

    invoke-static {v0}, Landroidx/work/Logger$LogcatLogger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    new-instance p1, Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 2

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object p1

    sget-object v0, Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;->TAG:Ljava/lang/String;

    const-string v1, "Binding died"

    invoke-virtual {p1, v0, v1}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v0, p1}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    invoke-virtual {p0}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->cleanUp()V

    return-void
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 3

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v0

    sget-object v1, Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;->TAG:Ljava/lang/String;

    const-string v2, "Unable to bind to service"

    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot bind to service "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object p1

    sget-object v0, Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;->TAG:Ljava/lang/String;

    const-string v1, "Service connected"

    invoke-virtual {p1, v0, v1}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->$r8$clinit:I

    const/4 p1, 0x0

    if-nez p2, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/work/multiprocess/IWorkManagerImpl;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroidx/work/multiprocess/IWorkManagerImpl;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/work/multiprocess/IWorkManagerImpl;

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/work/multiprocess/IWorkManagerImpl$Stub$Proxy;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p2, v0, Landroidx/work/multiprocess/IWorkManagerImpl$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    :goto_0
    iget-object p0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_2

    sget-object v0, Landroidx/work/impl/utils/futures/AbstractFuture;->NULL:Ljava/lang/Object;

    :cond_2
    sget-object p2, Landroidx/work/impl/utils/futures/AbstractFuture;->ATOMIC_HELPER:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzum;

    invoke-virtual {p2, p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzum;->casValue(Landroidx/work/impl/utils/futures/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Landroidx/work/impl/utils/futures/AbstractFuture;->complete(Landroidx/work/impl/utils/futures/AbstractFuture;)V

    :cond_3
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object p1

    sget-object v0, Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;->TAG:Ljava/lang/String;

    const-string v1, "Service disconnected"

    invoke-virtual {p1, v0, v1}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v0, p1}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    invoke-virtual {p0}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->cleanUp()V

    return-void
.end method

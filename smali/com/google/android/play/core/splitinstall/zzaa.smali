.class public final Lcom/google/android/play/core/splitinstall/zzaa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/splitinstall/SplitInstallManager;


# instance fields
.field public final zzc:Lcom/google/android/play/core/splitinstall/zzs;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/splitinstall/zzs;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/zzaa;->zzc:Lcom/google/android/play/core/splitinstall/zzs;

    return-void
.end method


# virtual methods
.method public final getInstalledModules()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/zzaa;->zzc:Lcom/google/android/play/core/splitinstall/zzs;

    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/zzs;->zzc()Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

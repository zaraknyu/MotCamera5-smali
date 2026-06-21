.class public final Lcom/google/android/gms/common/internal/zah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;


# static fields
.field public static zza:Lcom/google/android/gms/common/internal/zah;

.field public static final zzb:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;


# instance fields
.field public zaa:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;-><init>(IIIZZ)V

    sput-object v0, Lcom/google/android/gms/common/internal/zah;->zzb:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zah;->zaa:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/google/android/gms/common/internal/zah;
    .locals 2

    const-class v0, Lcom/google/android/gms/common/internal/zah;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/internal/zah;->zza:Lcom/google/android/gms/common/internal/zah;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/common/internal/zah;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/google/android/gms/common/internal/zah;->zza:Lcom/google/android/gms/common/internal/zah;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/google/android/gms/common/internal/zah;->zza:Lcom/google/android/gms/common/internal/zah;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public onReportServiceBinding(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zah;->zaa:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;

    iget v0, p1, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/GmsClient;->zac:Ljava/util/Set;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/internal/GmsClient;->getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzx:Lcom/google/android/gms/common/internal/zah;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zah;->zaa:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    invoke-interface {p0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_1
    return-void
.end method

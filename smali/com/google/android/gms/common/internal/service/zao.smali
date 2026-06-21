.class public final Lcom/google/android/gms/common/internal/service/zao;
.super Lcom/google/android/gms/common/api/GoogleApi;
.source "SourceFile"


# static fields
.field public static final zae:Lcom/tinder/StateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lokio/Timeout;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lokio/Timeout;-><init>(I)V

    new-instance v1, Lcom/google/android/gms/signin/zaa;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/google/android/gms/signin/zaa;-><init>(I)V

    new-instance v2, Lcom/tinder/StateMachine;

    const-string v3, "ClientTelemetry.API"

    invoke-direct {v2, v3, v1, v0}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/String;Lcom/google/android/gms/signin/zaa;Lokio/Timeout;)V

    sput-object v2, Lcom/google/android/gms/common/internal/service/zao;->zae:Lcom/tinder/StateMachine;

    return-void
.end method


# virtual methods
.method public final log(Lcom/google/android/gms/common/internal/TelemetryData;)Lcom/google/android/gms/tasks/zzw;
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/internal/zacv;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/zacv;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/common/api/internal/zacv;->zac:I

    sget-object v2, Lcom/google/android/gms/internal/base/zaf;->zaa:Lcom/google/android/gms/common/Feature;

    filled-new-array {v2}, [Lcom/google/android/gms/common/Feature;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zacv;->zaa$1:Ljava/lang/Object;

    iput-boolean v1, v0, Lcom/google/android/gms/common/api/internal/zacv;->zab:Z

    new-instance v1, Lcom/google/android/gms/tasks/zzad;

    const/16 v2, 0x1a

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/tasks/zzad;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zacv;->zaa:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zacv;->build()Lcom/google/android/gms/common/api/internal/zacv;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/common/api/GoogleApi;->zae(ILcom/google/android/gms/common/api/internal/zacv;)Lcom/google/android/gms/tasks/zzw;

    move-result-object p0

    return-object p0
.end method

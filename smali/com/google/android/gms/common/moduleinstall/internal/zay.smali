.class public final Lcom/google/android/gms/common/moduleinstall/internal/zay;
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

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/google/android/gms/signin/zaa;-><init>(I)V

    new-instance v2, Lcom/tinder/StateMachine;

    const-string v3, "ModuleInstall.API"

    invoke-direct {v2, v3, v1, v0}, Lcom/tinder/StateMachine;-><init>(Ljava/lang/String;Lcom/google/android/gms/signin/zaa;Lokio/Timeout;)V

    sput-object v2, Lcom/google/android/gms/common/moduleinstall/internal/zay;->zae:Lcom/tinder/StateMachine;

    return-void
.end method


# virtual methods
.method public final varargs areModulesAvailable([Lcom/google/android/gms/common/api/OptionalModuleApi;)Lcom/google/android/gms/tasks/zzw;
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const-string v4, "Please provide at least one OptionalModuleApi."

    invoke-static {v4, v3}, Lcom/google/android/gms/common/internal/zzah;->checkArgument(Ljava/lang/String;Z)V

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_1

    aget-object v4, p1, v3

    const-string v5, "Requested API must not be null."

    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/zzah;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;->zaa(Ljava/util/List;Z)Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;

    move-result-object p1

    iget-object v0, p1, Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;->zab:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;-><init>(IZ)V

    new-instance p1, Lcom/google/android/gms/tasks/zzw;

    invoke-direct {p1}, Lcom/google/android/gms/tasks/zzw;-><init>()V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/zzw;->zzb(Ljava/lang/Object;)V

    return-object p1

    :cond_2
    new-instance v0, Lcom/google/android/gms/common/api/internal/zacv;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/zacv;-><init>()V

    sget-object v2, Lcom/google/android/gms/internal/base/zaf;->zaa$1:Lcom/google/android/gms/common/Feature;

    filled-new-array {v2}, [Lcom/google/android/gms/common/Feature;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zacv;->zaa$1:Ljava/lang/Object;

    const/16 v2, 0x6aa5

    iput v2, v0, Lcom/google/android/gms/common/api/internal/zacv;->zac:I

    iput-boolean v1, v0, Lcom/google/android/gms/common/api/internal/zacv;->zab:Z

    new-instance v2, Landroidx/room/ObservedTableVersions;

    invoke-direct {v2, p0, p1}, Landroidx/room/ObservedTableVersions;-><init>(Lcom/google/android/gms/common/moduleinstall/internal/zay;Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;)V

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zacv;->zaa:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zacv;->build()Lcom/google/android/gms/common/api/internal/zacv;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/common/api/GoogleApi;->zae(ILcom/google/android/gms/common/api/internal/zacv;)Lcom/google/android/gms/tasks/zzw;

    move-result-object p0

    return-object p0
.end method

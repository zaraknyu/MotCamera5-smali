.class public Lcom/google/mlkit/common/internal/CommonComponentRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getComponents()Ljava/util/List;
    .locals 14

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->COMPONENT:Lcom/google/firebase/components/Component;

    const-class p0, Lokio/Timeout;

    invoke-static {p0}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Landroidx/media3/common/util/GlProgram;

    move-result-object p0

    new-instance v1, Lcom/google/firebase/components/Dependency;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-class v4, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/firebase/components/Dependency;-><init>(IILjava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/GlProgram;->add(Lcom/google/firebase/components/Dependency;)V

    new-instance v1, Landroidx/collection/internal/Lock;

    const/16 v5, 0xd

    invoke-direct {v1, v5}, Landroidx/collection/internal/Lock;-><init>(I)V

    iput-object v1, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->build()Lcom/google/firebase/components/Component;

    move-result-object v1

    const-class p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;

    invoke-static {p0}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Landroidx/media3/common/util/GlProgram;

    move-result-object v5

    new-instance v6, Lcom/google/mlkit/common/internal/zzb;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, v5, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    invoke-virtual {v5}, Landroidx/media3/common/util/GlProgram;->build()Lcom/google/firebase/components/Component;

    move-result-object v5

    const-class v6, Lcom/google/android/gms/tasks/zza;

    invoke-static {v6}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Landroidx/media3/common/util/GlProgram;

    move-result-object v6

    new-instance v7, Lcom/google/firebase/components/Dependency;

    const/4 v8, 0x2

    const-class v9, Lcom/google/mlkit/common/model/RemoteModelManager$RemoteModelManagerRegistration;

    invoke-direct {v7, v8, v3, v9}, Lcom/google/firebase/components/Dependency;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v6, v7}, Landroidx/media3/common/util/GlProgram;->add(Lcom/google/firebase/components/Dependency;)V

    new-instance v7, Lcom/google/mlkit/common/internal/zzc;

    invoke-direct {v7, v3}, Lcom/google/mlkit/common/internal/zzc;-><init>(I)V

    iput-object v7, v6, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    invoke-virtual {v6}, Landroidx/media3/common/util/GlProgram;->build()Lcom/google/firebase/components/Component;

    move-result-object v6

    const-class v7, Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;

    invoke-static {v7}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Landroidx/media3/common/util/GlProgram;

    move-result-object v7

    new-instance v8, Lcom/google/firebase/components/Dependency;

    invoke-direct {v8, v2, v2, p0}, Lcom/google/firebase/components/Dependency;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v7, v8}, Landroidx/media3/common/util/GlProgram;->add(Lcom/google/firebase/components/Dependency;)V

    new-instance p0, Lokio/Timeout;

    const/16 v8, 0xe

    invoke-direct {p0, v8}, Lokio/Timeout;-><init>(I)V

    iput-object p0, v7, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    invoke-virtual {v7}, Landroidx/media3/common/util/GlProgram;->build()Lcom/google/firebase/components/Component;

    move-result-object p0

    const-class v7, Lcom/google/mlkit/common/sdkinternal/Cleaner;

    invoke-static {v7}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Landroidx/media3/common/util/GlProgram;

    move-result-object v10

    new-instance v11, Lcom/google/mlkit/common/internal/zze;

    invoke-direct {v11, v3}, Lcom/google/mlkit/common/internal/zze;-><init>(I)V

    iput-object v11, v10, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    invoke-virtual {v10}, Landroidx/media3/common/util/GlProgram;->build()Lcom/google/firebase/components/Component;

    move-result-object v10

    const-class v11, Lcom/google/mlkit/common/internal/zzc;

    invoke-static {v11}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Landroidx/media3/common/util/GlProgram;

    move-result-object v11

    new-instance v12, Lcom/google/firebase/components/Dependency;

    invoke-direct {v12, v2, v3, v7}, Lcom/google/firebase/components/Dependency;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v11, v12}, Landroidx/media3/common/util/GlProgram;->add(Lcom/google/firebase/components/Dependency;)V

    new-instance v7, Landroidx/transition/Transition$1;

    invoke-direct {v7, v8}, Landroidx/transition/Transition$1;-><init>(I)V

    iput-object v7, v11, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    invoke-virtual {v11}, Landroidx/media3/common/util/GlProgram;->build()Lcom/google/firebase/components/Component;

    move-result-object v7

    const-class v11, Lcom/google/mlkit/common/internal/zzb;

    invoke-static {v11}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Landroidx/media3/common/util/GlProgram;

    move-result-object v12

    new-instance v13, Lcom/google/firebase/components/Dependency;

    invoke-direct {v13, v2, v3, v4}, Lcom/google/firebase/components/Dependency;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v12, v13}, Landroidx/media3/common/util/GlProgram;->add(Lcom/google/firebase/components/Dependency;)V

    new-instance v3, Lcom/google/android/gms/dynamite/zzf;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v12, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    invoke-virtual {v12}, Landroidx/media3/common/util/GlProgram;->build()Lcom/google/firebase/components/Component;

    move-result-object v3

    invoke-static {v9}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Landroidx/media3/common/util/GlProgram;

    move-result-object v4

    iput v2, v4, Landroidx/media3/common/util/GlProgram;->programId:I

    new-instance v9, Lcom/google/firebase/components/Dependency;

    invoke-direct {v9, v2, v2, v11}, Lcom/google/firebase/components/Dependency;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v4, v9}, Landroidx/media3/common/util/GlProgram;->add(Lcom/google/firebase/components/Dependency;)V

    new-instance v2, Landroidx/collection/internal/Lock;

    invoke-direct {v2, v8}, Landroidx/collection/internal/Lock;-><init>(I)V

    iput-object v2, v4, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    invoke-virtual {v4}, Landroidx/media3/common/util/GlProgram;->build()Lcom/google/firebase/components/Component;

    move-result-object v8

    sget-object v2, Lcom/google/android/gms/internal/mlkit_common/zzaf;->zza:Lcom/google/android/gms/internal/mlkit_common/zzad;

    move-object v2, v7

    move-object v7, v3

    move-object v3, v6

    move-object v6, v2

    move-object v4, p0

    move-object v2, v5

    move-object v5, v10

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    const/16 v0, 0x9

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/mlkit_common/zzak;->zza(I[Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzal;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/mlkit_common/zzal;-><init>(I[Ljava/lang/Object;)V

    return-object v1
.end method

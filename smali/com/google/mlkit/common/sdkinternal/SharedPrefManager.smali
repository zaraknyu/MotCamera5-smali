.class public final Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COMPONENT:Lcom/google/firebase/components/Component;


# instance fields
.field public final zza:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    invoke-static {v0}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Landroidx/media3/common/util/GlProgram;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/components/Dependency;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-class v4, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/firebase/components/Dependency;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/GlProgram;->add(Lcom/google/firebase/components/Dependency;)V

    new-instance v1, Lcom/google/firebase/components/Dependency;

    const-class v4, Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/firebase/components/Dependency;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/GlProgram;->add(Lcom/google/firebase/components/Dependency;)V

    new-instance v1, Lokio/Timeout;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lokio/Timeout;-><init>(I)V

    iput-object v1, v0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/media3/common/util/GlProgram;->build()Lcom/google/firebase/components/Component;

    move-result-object v0

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->COMPONENT:Lcom/google/firebase/components/Component;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->zza:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final declared-synchronized getMlSdkInstanceId()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->zza:Landroid/content/Context;

    const-string v1, "com.google.mlkit.internal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ml_sdk_instance_id"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->zza:Landroid/content/Context;

    const-string v3, "com.google.mlkit.internal"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "ml_sdk_instance_id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

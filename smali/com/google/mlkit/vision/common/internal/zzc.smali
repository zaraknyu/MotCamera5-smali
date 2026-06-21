.class public final synthetic Lcom/google/mlkit/vision/common/internal/zzc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field public static final synthetic zza:Lcom/google/mlkit/vision/common/internal/zzc;

.field public static final synthetic zza$1:Lcom/google/mlkit/vision/common/internal/zzc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/vision/common/internal/zzc;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/mlkit/vision/common/internal/zzc;->zza:Lcom/google/mlkit/vision/common/internal/zzc;

    new-instance v0, Lcom/google/mlkit/vision/common/internal/zzc;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/mlkit/vision/common/internal/zzc;->zza$1:Lcom/google/mlkit/vision/common/internal/zzc;

    return-void
.end method


# virtual methods
.method public create(Lcom/google/firebase/components/RestrictedComponentContainer;)Ljava/lang/Object;
    .locals 1

    const-class p0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature;

    invoke-virtual {p1, p0}, Lcom/google/firebase/components/RestrictedComponentContainer;->setOf(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    new-instance p1, Lcom/google/mlkit/vision/common/internal/zzc;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    sget-object p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzb:Lcom/tinder/StateMachine;

    iget-object v0, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Error preloading model resource"

    invoke-virtual {p0, v0}, Lcom/tinder/StateMachine;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "MobileVisionBase"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

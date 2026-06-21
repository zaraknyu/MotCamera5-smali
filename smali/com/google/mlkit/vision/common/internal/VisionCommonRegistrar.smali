.class public Lcom/google/mlkit/vision/common/internal/VisionCommonRegistrar;
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
    .locals 4

    const-class p0, Lcom/google/mlkit/vision/common/internal/zzc;

    invoke-static {p0}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Landroidx/media3/common/util/GlProgram;

    move-result-object p0

    new-instance v0, Lcom/google/firebase/components/Dependency;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-class v3, Lkotlin/reflect/jvm/internal/JvmFunctionSignature;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/components/Dependency;-><init>(IILjava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/GlProgram;->add(Lcom/google/firebase/components/Dependency;)V

    sget-object v0, Lcom/google/mlkit/vision/common/internal/zzc;->zza$1:Lcom/google/mlkit/vision/common/internal/zzc;

    iput-object v0, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->build()Lcom/google/firebase/components/Component;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    :goto_0
    const/4 v0, 0x1

    if-ge v2, v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzp;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzn;

    aget-object v0, p0, v2

    if-eqz v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "at index "

    invoke-static {v2, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzp;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzn;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;-><init>(I[Ljava/lang/Object;)V

    return-object v1
.end method

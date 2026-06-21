.class public Lcom/google/mlkit/vision/barcode/internal/BarcodeRegistrar;
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
    .locals 6

    const-class p0, Lcom/google/mlkit/vision/barcode/internal/zzi;

    invoke-static {p0}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Landroidx/media3/common/util/GlProgram;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/components/Dependency;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-class v4, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/firebase/components/Dependency;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/GlProgram;->add(Lcom/google/firebase/components/Dependency;)V

    new-instance v1, Lcom/google/mlkit/common/internal/zze;

    const/16 v5, 0xe

    invoke-direct {v1, v5}, Lcom/google/mlkit/common/internal/zze;-><init>(I)V

    iput-object v1, v0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/media3/common/util/GlProgram;->build()Lcom/google/firebase/components/Component;

    move-result-object v0

    const-class v1, Lcom/google/mlkit/vision/barcode/internal/zzg;

    invoke-static {v1}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Landroidx/media3/common/util/GlProgram;

    move-result-object v1

    new-instance v5, Lcom/google/firebase/components/Dependency;

    invoke-direct {v5, v2, v3, p0}, Lcom/google/firebase/components/Dependency;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v1, v5}, Landroidx/media3/common/util/GlProgram;->add(Lcom/google/firebase/components/Dependency;)V

    new-instance p0, Lcom/google/firebase/components/Dependency;

    const-class v5, Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;

    invoke-direct {p0, v2, v3, v5}, Lcom/google/firebase/components/Dependency;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v1, p0}, Landroidx/media3/common/util/GlProgram;->add(Lcom/google/firebase/components/Dependency;)V

    new-instance p0, Lcom/google/firebase/components/Dependency;

    invoke-direct {p0, v2, v3, v4}, Lcom/google/firebase/components/Dependency;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v1, p0}, Landroidx/media3/common/util/GlProgram;->add(Lcom/google/firebase/components/Dependency;)V

    new-instance p0, Landroidx/transition/Transition$1;

    const/16 v2, 0xf

    invoke-direct {p0, v2}, Landroidx/transition/Transition$1;-><init>(I)V

    iput-object p0, v1, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    invoke-virtual {v1}, Landroidx/media3/common/util/GlProgram;->build()Lcom/google/firebase/components/Component;

    move-result-object p0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcq;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    :goto_0
    const/4 v0, 0x2

    if-ge v3, v0, :cond_1

    aget-object v0, p0, v3

    if-eqz v0, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "at index "

    invoke-static {v3, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;-><init>(I[Ljava/lang/Object;)V

    return-object v1
.end method

.class public final Landroidx/compose/runtime/ProvidedValue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public canOverride:Z

.field public final compositionLocal:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field public final explicitNull:Z

.field public final isDynamic:Z

.field public final mutationPolicy:Landroidx/compose/runtime/SnapshotMutationPolicy;

.field public final providedValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/ProvidableCompositionLocal;Ljava/lang/Object;ZLandroidx/compose/runtime/SnapshotMutationPolicy;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ProvidedValue;->compositionLocal:Landroidx/compose/runtime/ProvidableCompositionLocal;

    iput-boolean p3, p0, Landroidx/compose/runtime/ProvidedValue;->explicitNull:Z

    iput-object p4, p0, Landroidx/compose/runtime/ProvidedValue;->mutationPolicy:Landroidx/compose/runtime/SnapshotMutationPolicy;

    iput-boolean p5, p0, Landroidx/compose/runtime/ProvidedValue;->isDynamic:Z

    iput-object p2, p0, Landroidx/compose/runtime/ProvidedValue;->providedValue:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/runtime/ProvidedValue;->canOverride:Z

    return-void
.end method


# virtual methods
.method public final getEffectiveValue$runtime_release()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/runtime/ProvidedValue;->explicitNull:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/ProvidedValue;->providedValue:Ljava/lang/Object;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const-string p0, "Unexpected form of a provided value"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

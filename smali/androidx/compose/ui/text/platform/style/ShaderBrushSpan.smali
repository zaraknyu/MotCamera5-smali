.class public final Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;
.super Landroid/text/style/CharacterStyle;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field public final alpha:F

.field public final shaderBrush:Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;

.field public final shaderState:Landroidx/compose/runtime/DerivedSnapshotState;

.field public final size$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;F)V
    .locals 2

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->shaderBrush:Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;

    iput p2, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->alpha:F

    new-instance p1, Landroidx/compose/ui/geometry/Size;

    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    invoke-direct {p1, v0, v1}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->size$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance p1, Landroidx/work/Worker$startWork$1;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Landroidx/work/Worker$startWork$1;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->shaderState:Landroidx/compose/runtime/DerivedSnapshotState;

    return-void
.end method


# virtual methods
.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->alpha:F

    invoke-static {p1, v0}, Lkotlinx/coroutines/channels/ActorKt;->setAlpha(Landroid/text/TextPaint;F)V

    iget-object p0, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->shaderState:Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {p0}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Shader;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

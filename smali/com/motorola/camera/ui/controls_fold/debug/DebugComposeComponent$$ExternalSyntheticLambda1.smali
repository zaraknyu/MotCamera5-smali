.class public final synthetic Lcom/motorola/camera/ui/controls_fold/debug/DebugComposeComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/compose/ui/unit/Density;

.field public final synthetic f$1:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/controls_fold/debug/DebugComposeComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/debug/DebugComposeComponent$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/unit/Density;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_fold/debug/DebugComposeComponent$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/controls_fold/debug/DebugComposeComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    packed-switch v0, :pswitch_data_0

    iget-wide v0, p1, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    new-instance v2, Landroidx/compose/ui/unit/IntSize;

    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/debug/DebugComposeComponent$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-wide v0, p1, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/debug/DebugComposeComponent$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0, v0}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v1

    invoke-interface {p0, v0}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result p0

    invoke-static {v1, p0}, Landroidx/compose/ui/unit/DpKt;->DpSize-YgX7TsA(FF)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/DpSize;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NavBar size(px): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", (dp): "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DebugComposeComponent"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-wide v0, p1, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    new-instance v2, Landroidx/compose/ui/unit/IntSize;

    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/debug/DebugComposeComponent$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-wide v0, p1, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v2, v2

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/debug/DebugComposeComponent$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0, v2}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v2

    const-wide v3, 0xffffffffL

    and-long/2addr v0, v3

    long-to-int v0, v0

    invoke-interface {p0, v0}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result p0

    invoke-static {v2, p0}, Landroidx/compose/ui/unit/DpKt;->DpSize-YgX7TsA(FF)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/DpSize;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Box size(px): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", (dp): "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DebugComposeComponent"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

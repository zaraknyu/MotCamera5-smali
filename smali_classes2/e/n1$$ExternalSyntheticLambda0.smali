.class public final synthetic Le/n1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:F

.field public final synthetic f$2:J

.field public final synthetic f$3:J

.field public final synthetic f$4:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$5:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(FFJJLandroidx/compose/runtime/ParcelableSnapshotMutableFloatState;Landroidx/compose/runtime/ParcelableSnapshotMutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/n1$$ExternalSyntheticLambda0;->f$0:F

    iput p2, p0, Le/n1$$ExternalSyntheticLambda0;->f$1:F

    iput-wide p3, p0, Le/n1$$ExternalSyntheticLambda0;->f$2:J

    iput-wide p5, p0, Le/n1$$ExternalSyntheticLambda0;->f$3:J

    iput-object p7, p0, Le/n1$$ExternalSyntheticLambda0;->f$4:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Le/n1$$ExternalSyntheticLambda0;->f$5:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroidx/compose/animation/core/Animatable;

    const-string v0, "$this$animateTo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget v1, p0, Le/n1$$ExternalSyntheticLambda0;->f$0:F

    iget v2, p0, Le/n1$$ExternalSyntheticLambda0;->f$1:F

    invoke-static {v1, v2, v0}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Le/n1$$ExternalSyntheticLambda0;->f$4:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget-wide v0, p0, Le/n1$$ExternalSyntheticLambda0;->f$2:J

    iget-wide v2, p0, Le/n1$$ExternalSyntheticLambda0;->f$3:J

    invoke-static {v0, v1, p1, v2, v3}, Landroidx/compose/ui/geometry/OffsetKt;->lerp-Wko1d7g(JFJ)J

    move-result-wide v0

    new-instance p1, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {p1, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    iget-object p0, p0, Le/n1$$ExternalSyntheticLambda0;->f$5:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

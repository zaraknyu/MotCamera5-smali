.class public final Landroidx/compose/animation/AnimatedContentKt$SizeTransform$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final INSTANCE:Landroidx/compose/animation/AnimatedContentKt$SizeTransform$1;

.field public static final INSTANCE$1:Landroidx/compose/animation/AnimatedContentKt$SizeTransform$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/animation/AnimatedContentKt$SizeTransform$1;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/animation/AnimatedContentKt$SizeTransform$1;-><init>(II)V

    sput-object v0, Landroidx/compose/animation/AnimatedContentKt$SizeTransform$1;->INSTANCE:Landroidx/compose/animation/AnimatedContentKt$SizeTransform$1;

    new-instance v0, Landroidx/compose/animation/AnimatedContentKt$SizeTransform$1;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/animation/AnimatedContentKt$SizeTransform$1;-><init>(II)V

    sput-object v0, Landroidx/compose/animation/AnimatedContentKt$SizeTransform$1;->INSTANCE$1:Landroidx/compose/animation/AnimatedContentKt$SizeTransform$1;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Landroidx/compose/animation/AnimatedContentKt$SizeTransform$1;->$r8$classId:I

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget p0, p0, Landroidx/compose/animation/AnimatedContentKt$SizeTransform$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroidx/compose/animation/EnterExitState;

    check-cast p2, Landroidx/compose/animation/EnterExitState;

    if-ne p1, p2, :cond_0

    sget-object p0, Landroidx/compose/animation/EnterExitState;->PostExit:Landroidx/compose/animation/EnterExitState;

    if-ne p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    iget-wide p0, p1, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    check-cast p2, Landroidx/compose/ui/unit/IntSize;

    iget-wide p0, p2, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    const/4 p0, 0x1

    int-to-long p1, p0

    const/16 v0, 0x20

    shl-long v0, p1, v0

    const-wide v2, 0xffffffffL

    and-long/2addr p1, v2

    or-long/2addr p1, v0

    new-instance v0, Landroidx/compose/ui/unit/IntSize;

    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    const/high16 p1, 0x43c80000    # 400.0f

    invoke-static {p1, p0, v0}, Landroidx/compose/animation/core/ArcSplineKt;->spring$default(FILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

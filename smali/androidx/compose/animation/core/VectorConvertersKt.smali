.class public abstract Landroidx/compose/animation/core/VectorConvertersKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DpOffsetToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

.field public static final DpToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

.field public static final FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

.field public static final IntOffsetToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

.field public static final IntSizeToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

.field public static final IntToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

.field public static final OffsetToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

.field public static final RectToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

.field public static final SizeToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;->INSTANCE$6:Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;

    sget-object v1, Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;->INSTANCE$7:Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;

    new-instance v2, Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-direct {v2, v0, v1}, Landroidx/compose/animation/core/TwoWayConverterImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    sput-object v2, Landroidx/compose/animation/core/VectorConvertersKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    sget-object v0, Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;->INSTANCE$12:Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;

    sget-object v1, Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;->INSTANCE$13:Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;

    new-instance v2, Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-direct {v2, v0, v1}, Landroidx/compose/animation/core/TwoWayConverterImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    sput-object v2, Landroidx/compose/animation/core/VectorConvertersKt;->IntToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    sget-object v0, Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;->INSTANCE$4:Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;

    sget-object v1, Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;->INSTANCE$5:Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;

    new-instance v2, Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-direct {v2, v0, v1}, Landroidx/compose/animation/core/TwoWayConverterImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    sput-object v2, Landroidx/compose/animation/core/VectorConvertersKt;->DpToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    sget-object v0, Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;->INSTANCE$2:Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;

    sget-object v1, Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;->INSTANCE$3:Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;

    new-instance v2, Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-direct {v2, v0, v1}, Landroidx/compose/animation/core/TwoWayConverterImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    sput-object v2, Landroidx/compose/animation/core/VectorConvertersKt;->DpOffsetToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    sget-object v0, Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;->INSTANCE$18:Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;

    sget-object v1, Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;->INSTANCE$19:Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;

    new-instance v2, Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-direct {v2, v0, v1}, Landroidx/compose/animation/core/TwoWayConverterImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    sput-object v2, Landroidx/compose/animation/core/VectorConvertersKt;->SizeToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    sget-object v0, Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;->INSTANCE$14:Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;

    sget-object v1, Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;->INSTANCE$15:Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;

    new-instance v2, Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-direct {v2, v0, v1}, Landroidx/compose/animation/core/TwoWayConverterImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    sput-object v2, Landroidx/compose/animation/core/VectorConvertersKt;->OffsetToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    sget-object v0, Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;->INSTANCE$8:Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;

    sget-object v1, Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;->INSTANCE$9:Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;

    new-instance v2, Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-direct {v2, v0, v1}, Landroidx/compose/animation/core/TwoWayConverterImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    sput-object v2, Landroidx/compose/animation/core/VectorConvertersKt;->IntOffsetToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    sget-object v0, Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;->INSTANCE$10:Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;

    sget-object v1, Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;->INSTANCE$11:Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;

    new-instance v2, Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-direct {v2, v0, v1}, Landroidx/compose/animation/core/TwoWayConverterImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    sput-object v2, Landroidx/compose/animation/core/VectorConvertersKt;->IntSizeToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    sget-object v0, Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;->INSTANCE$16:Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;

    sget-object v1, Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;->INSTANCE$17:Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;

    new-instance v2, Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-direct {v2, v0, v1}, Landroidx/compose/animation/core/TwoWayConverterImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    sput-object v2, Landroidx/compose/animation/core/VectorConvertersKt;->RectToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    return-void
.end method

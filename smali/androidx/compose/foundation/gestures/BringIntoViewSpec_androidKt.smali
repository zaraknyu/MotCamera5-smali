.class public abstract Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LocalBringIntoViewSpec:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

.field public static final PivotBringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt$PivotBringIntoViewSpec$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;->INSTANCE$1:Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;

    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function1;)V

    sput-object v1, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->LocalBringIntoViewSpec:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    new-instance v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt$PivotBringIntoViewSpec$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->PivotBringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt$PivotBringIntoViewSpec$1;

    return-void
.end method

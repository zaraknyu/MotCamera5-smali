.class public final Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;

.field public static final INSTANCE$1:Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;

.field public static final INSTANCE$2:Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;

.field public static final INSTANCE$3:Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;-><init>(II)V

    sput-object v0, Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;->INSTANCE$1:Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;

    new-instance v0, Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;-><init>(II)V

    sput-object v0, Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;->INSTANCE$2:Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;

    new-instance v0, Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;-><init>(II)V

    sput-object v0, Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;

    new-instance v0, Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;-><init>(II)V

    sput-object v0, Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;->INSTANCE$3:Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;->$r8$classId:I

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget p0, p0, Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    sget-object p0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0}, Landroidx/compose/runtime/AnchoredGroupPath;->read(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "android.software.leanback"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->Companion:Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;->DefaultBringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion$DefaultBringIntoViewSpec$1;

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->PivotBringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt$PivotBringIntoViewSpec$1;

    :goto_0
    return-object p0

    :pswitch_2
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget p0, p1, Landroidx/compose/ui/input/pointer/PointerInputChange;->type:I

    const/4 p1, 0x2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    move p0, v0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    xor-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

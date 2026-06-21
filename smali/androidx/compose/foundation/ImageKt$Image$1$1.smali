.class public final Landroidx/compose/foundation/ImageKt$Image$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/ImageKt$Image$1$1;

.field public static final INSTANCE$1:Landroidx/compose/foundation/ImageKt$Image$1$1;

.field public static final INSTANCE$2:Landroidx/compose/foundation/ImageKt$Image$1$1;

.field public static final INSTANCE$3:Landroidx/compose/foundation/ImageKt$Image$1$1;

.field public static final INSTANCE$4:Landroidx/compose/foundation/ImageKt$Image$1$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/foundation/ImageKt$Image$1$1;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/ImageKt$Image$1$1;-><init>(II)V

    sput-object v0, Landroidx/compose/foundation/ImageKt$Image$1$1;->INSTANCE$1:Landroidx/compose/foundation/ImageKt$Image$1$1;

    new-instance v0, Landroidx/compose/foundation/ImageKt$Image$1$1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/ImageKt$Image$1$1;-><init>(II)V

    sput-object v0, Landroidx/compose/foundation/ImageKt$Image$1$1;->INSTANCE:Landroidx/compose/foundation/ImageKt$Image$1$1;

    new-instance v0, Landroidx/compose/foundation/ImageKt$Image$1$1;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/ImageKt$Image$1$1;-><init>(II)V

    sput-object v0, Landroidx/compose/foundation/ImageKt$Image$1$1;->INSTANCE$2:Landroidx/compose/foundation/ImageKt$Image$1$1;

    new-instance v0, Landroidx/compose/foundation/ImageKt$Image$1$1;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/ImageKt$Image$1$1;-><init>(II)V

    sput-object v0, Landroidx/compose/foundation/ImageKt$Image$1$1;->INSTANCE$3:Landroidx/compose/foundation/ImageKt$Image$1$1;

    new-instance v0, Landroidx/compose/foundation/ImageKt$Image$1$1;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/ImageKt$Image$1$1;-><init>(II)V

    sput-object v0, Landroidx/compose/foundation/ImageKt$Image$1$1;->INSTANCE$4:Landroidx/compose/foundation/ImageKt$Image$1$1;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Landroidx/compose/foundation/ImageKt$Image$1$1;->$r8$classId:I

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget p0, p0, Landroidx/compose/foundation/ImageKt$Image$1$1;->$r8$classId:I

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    new-instance p1, Landroidx/compose/foundation/ScrollState;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/ScrollState;-><init>(I)V

    return-object p1

    :pswitch_0
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    sget-object p0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->Indeterminate:Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->ProgressBarRangeInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->setValue(Landroidx/compose/ui/semantics/SemanticsConfiguration;Ljava/lang/Object;)V

    return-object v0

    :pswitch_1
    check-cast p1, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    sget p0, Landroidx/compose/foundation/AndroidOverscroll_androidKt;->$r8$clinit:I

    sget-object p0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0}, Landroidx/compose/runtime/AnchoredGroupPath;->read(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    sget-object p0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-static {p1, p0}, Landroidx/compose/runtime/AnchoredGroupPath;->read(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Landroidx/compose/ui/unit/Density;

    sget-object p0, Landroidx/compose/foundation/OverscrollConfiguration_androidKt;->LocalOverscrollConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-static {p1, p0}, Landroidx/compose/runtime/AnchoredGroupPath;->read(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/OverscrollConfiguration;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;

    iget-wide v3, p0, Landroidx/compose/foundation/OverscrollConfiguration;->glowColor:J

    iget-object v5, p0, Landroidx/compose/foundation/OverscrollConfiguration;->drawPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;-><init>(Landroid/content/Context;Landroidx/compose/ui/unit/Density;JLandroidx/compose/foundation/layout/PaddingValuesImpl;)V

    move-object p0, v0

    :goto_0
    return-object p0

    :pswitch_2
    check-cast p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    return-object v0

    :pswitch_3
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

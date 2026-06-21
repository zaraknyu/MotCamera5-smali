.class public final Lcom/motorola/camera/ui/controls_fold/controls/ComposableSingletons$ControlFoldScreenComposeComponentKt$lambda$1682637641$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/ui/controls_fold/controls/ComposableSingletons$ControlFoldScreenComposeComponentKt$lambda$1682637641$1;

.field public static final INSTANCE$1:Lcom/motorola/camera/ui/controls_fold/controls/ComposableSingletons$ControlFoldScreenComposeComponentKt$lambda$1682637641$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/controls_fold/controls/ComposableSingletons$ControlFoldScreenComposeComponentKt$lambda$1682637641$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/controls_fold/controls/ComposableSingletons$ControlFoldScreenComposeComponentKt$lambda$1682637641$1;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/ui/controls_fold/controls/ComposableSingletons$ControlFoldScreenComposeComponentKt$lambda$1682637641$1;->INSTANCE:Lcom/motorola/camera/ui/controls_fold/controls/ComposableSingletons$ControlFoldScreenComposeComponentKt$lambda$1682637641$1;

    new-instance v0, Lcom/motorola/camera/ui/controls_fold/controls/ComposableSingletons$ControlFoldScreenComposeComponentKt$lambda$1682637641$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/controls_fold/controls/ComposableSingletons$ControlFoldScreenComposeComponentKt$lambda$1682637641$1;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/ui/controls_fold/controls/ComposableSingletons$ControlFoldScreenComposeComponentKt$lambda$1682637641$1;->INSTANCE$1:Lcom/motorola/camera/ui/controls_fold/controls/ComposableSingletons$ControlFoldScreenComposeComponentKt$lambda$1682637641$1;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/controls_fold/controls/ComposableSingletons$ControlFoldScreenComposeComponentKt$lambda$1682637641$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget p0, p0, Lcom/motorola/camera/ui/controls_fold/controls/ComposableSingletons$ControlFoldScreenComposeComponentKt$lambda$1682637641$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p0

    and-int/lit8 p0, p0, 0x3

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    const p0, 0x7f0801c8

    const/4 p1, 0x6

    invoke-static {p0, v5, p1}, Landroidx/compose/ui/res/PainterResources_androidKt;->painterResource(ILandroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v0

    sget-wide v3, Landroidx/compose/ui/graphics/Color;->White:J

    sget-object p0, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v5, p0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/compose/Dimensions;

    iget p1, p1, Lcom/motorola/camera/ui/compose/Dimensions;->foldControlIconCornerShape:F

    sget-object p2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {p2, p1}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p1

    sget-object p2, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {p1, p2}, Landroidx/compose/ui/draw/BlurKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    invoke-virtual {v5, p0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/compose/Dimensions;

    iget p0, p0, Lcom/motorola/camera/ui/compose/Dimensions;->foldControlIconPadding:F

    invoke-static {p1, p0}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/16 v6, 0xc30

    const/4 v7, 0x0

    const-string v1, ""

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/ComposerImpl;II)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p0

    and-int/lit8 p0, p0, 0x3

    const/4 p1, 0x2

    if-ne p0, p1, :cond_3

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_3

    :cond_3
    :goto_2
    const p0, 0x7f080263

    const/4 p1, 0x6

    invoke-static {p0, v5, p1}, Landroidx/compose/ui/res/PainterResources_androidKt;->painterResource(ILandroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v0

    sget-wide v3, Landroidx/compose/ui/graphics/Color;->White:J

    sget-object p0, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v5, p0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/compose/Dimensions;

    iget p1, p1, Lcom/motorola/camera/ui/compose/Dimensions;->foldControlIconCornerShape:F

    sget-object p2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {p2, p1}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p1

    invoke-virtual {v5, p0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/compose/Dimensions;

    iget p0, p0, Lcom/motorola/camera/ui/compose/Dimensions;->foldControlIconPadding:F

    invoke-static {p1, p0}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/16 v6, 0xc30

    const/4 v7, 0x0

    const-string v1, ""

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/ComposerImpl;II)V

    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

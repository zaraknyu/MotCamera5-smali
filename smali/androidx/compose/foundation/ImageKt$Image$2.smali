.class public final Landroidx/compose/foundation/ImageKt$Image$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $$changed:I

.field public final synthetic $$default:I

.field public final synthetic $alignment:Landroidx/compose/ui/BiasAlignment;

.field public final synthetic $alpha:F

.field public final synthetic $contentDescription:Ljava/lang/String;

.field public final synthetic $contentScale:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

.field public final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field public final synthetic $painter:Landroidx/compose/ui/graphics/painter/Painter;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;FII)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/ImageKt$Image$2;->$painter:Landroidx/compose/ui/graphics/painter/Painter;

    iput-object p2, p0, Landroidx/compose/foundation/ImageKt$Image$2;->$contentDescription:Ljava/lang/String;

    iput-object p3, p0, Landroidx/compose/foundation/ImageKt$Image$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Landroidx/compose/foundation/ImageKt$Image$2;->$alignment:Landroidx/compose/ui/BiasAlignment;

    iput-object p5, p0, Landroidx/compose/foundation/ImageKt$Image$2;->$contentScale:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    iput p6, p0, Landroidx/compose/foundation/ImageKt$Image$2;->$alpha:F

    iput p7, p0, Landroidx/compose/foundation/ImageKt$Image$2;->$$changed:I

    iput p8, p0, Landroidx/compose/foundation/ImageKt$Image$2;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, Landroidx/compose/foundation/ImageKt$Image$2;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v7

    iget v8, p0, Landroidx/compose/foundation/ImageKt$Image$2;->$$default:I

    iget-object v0, p0, Landroidx/compose/foundation/ImageKt$Image$2;->$painter:Landroidx/compose/ui/graphics/painter/Painter;

    iget-object v1, p0, Landroidx/compose/foundation/ImageKt$Image$2;->$contentDescription:Ljava/lang/String;

    iget-object v2, p0, Landroidx/compose/foundation/ImageKt$Image$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Landroidx/compose/foundation/ImageKt$Image$2;->$alignment:Landroidx/compose/ui/BiasAlignment;

    iget-object v4, p0, Landroidx/compose/foundation/ImageKt$Image$2;->$contentScale:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    iget v5, p0, Landroidx/compose/foundation/ImageKt$Image$2;->$alpha:F

    invoke-static/range {v0 .. v8}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;FLandroidx/compose/runtime/ComposerImpl;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

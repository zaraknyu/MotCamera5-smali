.class public final Landroidx/compose/material3/IconButtonKt$IconButton$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $$changed:I

.field public final synthetic $$default:I

.field public final synthetic $colors:Landroidx/compose/material3/IconButtonColors;

.field public final synthetic $content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic $enabled:Z

.field public final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field public final synthetic $onClick:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/IconButtonKt$IconButton$2;->$onClick:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Landroidx/compose/material3/IconButtonKt$IconButton$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput-boolean p3, p0, Landroidx/compose/material3/IconButtonKt$IconButton$2;->$enabled:Z

    iput-object p4, p0, Landroidx/compose/material3/IconButtonKt$IconButton$2;->$colors:Landroidx/compose/material3/IconButtonColors;

    iput-object p5, p0, Landroidx/compose/material3/IconButtonKt$IconButton$2;->$content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput p6, p0, Landroidx/compose/material3/IconButtonKt$IconButton$2;->$$changed:I

    iput p7, p0, Landroidx/compose/material3/IconButtonKt$IconButton$2;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, Landroidx/compose/material3/IconButtonKt$IconButton$2;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v6

    iget v7, p0, Landroidx/compose/material3/IconButtonKt$IconButton$2;->$$default:I

    iget-object v0, p0, Landroidx/compose/material3/IconButtonKt$IconButton$2;->$onClick:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Landroidx/compose/material3/IconButtonKt$IconButton$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget-boolean v2, p0, Landroidx/compose/material3/IconButtonKt$IconButton$2;->$enabled:Z

    iget-object v3, p0, Landroidx/compose/material3/IconButtonKt$IconButton$2;->$colors:Landroidx/compose/material3/IconButtonColors;

    iget-object v4, p0, Landroidx/compose/material3/IconButtonKt$IconButton$2;->$content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/ButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

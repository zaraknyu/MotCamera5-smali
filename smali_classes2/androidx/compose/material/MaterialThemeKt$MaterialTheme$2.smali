.class public final Landroidx/compose/material/MaterialThemeKt$MaterialTheme$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $colors:Landroidx/compose/material/Colors;

.field public final synthetic $content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic $shapes:Landroidx/compose/material/Shapes;

.field public final synthetic $typography:Landroidx/compose/material/Typography;


# direct methods
.method public constructor <init>(Landroidx/compose/material/Colors;Landroidx/compose/material/Typography;Landroidx/compose/material/Shapes;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material/MaterialThemeKt$MaterialTheme$2;->$colors:Landroidx/compose/material/Colors;

    iput-object p2, p0, Landroidx/compose/material/MaterialThemeKt$MaterialTheme$2;->$typography:Landroidx/compose/material/Typography;

    iput-object p3, p0, Landroidx/compose/material/MaterialThemeKt$MaterialTheme$2;->$shapes:Landroidx/compose/material/Shapes;

    iput-object p4, p0, Landroidx/compose/material/MaterialThemeKt$MaterialTheme$2;->$content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    const/16 p1, 0xc01

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v5

    iget-object v0, p0, Landroidx/compose/material/MaterialThemeKt$MaterialTheme$2;->$colors:Landroidx/compose/material/Colors;

    iget-object v1, p0, Landroidx/compose/material/MaterialThemeKt$MaterialTheme$2;->$typography:Landroidx/compose/material/Typography;

    iget-object v2, p0, Landroidx/compose/material/MaterialThemeKt$MaterialTheme$2;->$shapes:Landroidx/compose/material/Shapes;

    iget-object v3, p0, Landroidx/compose/material/MaterialThemeKt$MaterialTheme$2;->$content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static/range {v0 .. v5}, La/l;->MaterialTheme(Landroidx/compose/material/Colors;Landroidx/compose/material/Typography;Landroidx/compose/material/Shapes;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

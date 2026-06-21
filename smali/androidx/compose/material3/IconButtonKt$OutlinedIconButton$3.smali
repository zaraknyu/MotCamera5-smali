.class public final Landroidx/compose/material3/IconButtonKt$OutlinedIconButton$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $border:Landroidx/compose/foundation/BorderStroke;

.field public final synthetic $colors:Landroidx/compose/material3/IconButtonColors;

.field public final synthetic $enabled:Z

.field public final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field public final synthetic $onClick:Lkotlin/jvm/functions/Function0;

.field public final synthetic $shape:Landroidx/compose/ui/graphics/Shape;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/BorderStroke;I)V
    .locals 0

    sget-object p7, Lcom/motorola/camera/cli/onboard/large/ComposableSingletons$LargeCliOnboardComponentKt;->lambda$1653312013:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput-object p1, p0, Landroidx/compose/material3/IconButtonKt$OutlinedIconButton$3;->$onClick:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Landroidx/compose/material3/IconButtonKt$OutlinedIconButton$3;->$modifier:Landroidx/compose/ui/Modifier;

    iput-boolean p3, p0, Landroidx/compose/material3/IconButtonKt$OutlinedIconButton$3;->$enabled:Z

    iput-object p4, p0, Landroidx/compose/material3/IconButtonKt$OutlinedIconButton$3;->$shape:Landroidx/compose/ui/graphics/Shape;

    iput-object p5, p0, Landroidx/compose/material3/IconButtonKt$OutlinedIconButton$3;->$colors:Landroidx/compose/material3/IconButtonColors;

    iput-object p6, p0, Landroidx/compose/material3/IconButtonKt$OutlinedIconButton$3;->$border:Landroidx/compose/foundation/BorderStroke;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    sget-object p1, Lcom/motorola/camera/cli/onboard/large/ComposableSingletons$LargeCliOnboardComponentKt;->lambda$1653312013:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const p1, 0xc30001

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v7

    iget-object v0, p0, Landroidx/compose/material3/IconButtonKt$OutlinedIconButton$3;->$onClick:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Landroidx/compose/material3/IconButtonKt$OutlinedIconButton$3;->$modifier:Landroidx/compose/ui/Modifier;

    iget-boolean v2, p0, Landroidx/compose/material3/IconButtonKt$OutlinedIconButton$3;->$enabled:Z

    iget-object v3, p0, Landroidx/compose/material3/IconButtonKt$OutlinedIconButton$3;->$shape:Landroidx/compose/ui/graphics/Shape;

    iget-object v4, p0, Landroidx/compose/material3/IconButtonKt$OutlinedIconButton$3;->$colors:Landroidx/compose/material3/IconButtonColors;

    iget-object v5, p0, Landroidx/compose/material3/IconButtonKt$OutlinedIconButton$3;->$border:Landroidx/compose/foundation/BorderStroke;

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/ButtonKt;->OutlinedIconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

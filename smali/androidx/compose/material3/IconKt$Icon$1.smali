.class public final Landroidx/compose/material3/IconKt$Icon$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $$changed:I

.field public final synthetic $$default:I

.field public final synthetic $contentDescription:Ljava/lang/String;

.field public final synthetic $imageVector:Ljava/lang/Object;

.field public final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field public final synthetic $r8$classId:I

.field public final synthetic $tint:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;JIII)V
    .locals 0

    iput p8, p0, Landroidx/compose/material3/IconKt$Icon$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/material3/IconKt$Icon$1;->$imageVector:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/material3/IconKt$Icon$1;->$contentDescription:Ljava/lang/String;

    iput-object p3, p0, Landroidx/compose/material3/IconKt$Icon$1;->$modifier:Landroidx/compose/ui/Modifier;

    iput-wide p4, p0, Landroidx/compose/material3/IconKt$Icon$1;->$tint:J

    iput p6, p0, Landroidx/compose/material3/IconKt$Icon$1;->$$changed:I

    iput p7, p0, Landroidx/compose/material3/IconKt$Icon$1;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Landroidx/compose/material3/IconKt$Icon$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p1, p0, Landroidx/compose/material3/IconKt$Icon$1;->$imageVector:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/painter/Painter;

    iget p1, p0, Landroidx/compose/material3/IconKt$Icon$1;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v7

    iget v8, p0, Landroidx/compose/material3/IconKt$Icon$1;->$$default:I

    iget-object v2, p0, Landroidx/compose/material3/IconKt$Icon$1;->$contentDescription:Ljava/lang/String;

    iget-object v3, p0, Landroidx/compose/material3/IconKt$Icon$1;->$modifier:Landroidx/compose/ui/Modifier;

    iget-wide v4, p0, Landroidx/compose/material3/IconKt$Icon$1;->$tint:J

    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/ComposerImpl;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p1, p0, Landroidx/compose/material3/IconKt$Icon$1;->$imageVector:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/graphics/vector/ImageVector;

    iget p1, p0, Landroidx/compose/material3/IconKt$Icon$1;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v6

    iget v7, p0, Landroidx/compose/material3/IconKt$Icon$1;->$$default:I

    iget-object v1, p0, Landroidx/compose/material3/IconKt$Icon$1;->$contentDescription:Ljava/lang/String;

    iget-object v2, p0, Landroidx/compose/material3/IconKt$Icon$1;->$modifier:Landroidx/compose/ui/Modifier;

    iget-wide v3, p0, Landroidx/compose/material3/IconKt$Icon$1;->$tint:J

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/ComposerImpl;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

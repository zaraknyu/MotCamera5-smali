.class public final Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$StorageFull$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $modifier:Ljava/lang/Object;

.field public final synthetic $onClick:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$StorageFull$2;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$StorageFull$2;->$modifier:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$StorageFull$2;->$onClick:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$StorageFull$2;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v3, v0, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$StorageFull$2;->$onClick:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/ui/compose/Dimensions;

    and-int/lit8 v2, v2, 0x3

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$StorageFull$2;->$modifier:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    new-instance v18, Landroidx/compose/ui/text/TextStyle;

    sget-object v0, Lcom/motorola/camera/ui/compose/CustomColorsKt;->LocalCustomColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/compose/CustomColors;

    iget-wide v5, v0, Lcom/motorola/camera/ui/compose/CustomColors;->dialogTextColor:J

    iget-wide v7, v3, Lcom/motorola/camera/ui/compose/Dimensions;->dialogFontSize:J

    new-instance v9, Landroidx/compose/ui/text/font/FontWeight;

    iget v0, v3, Lcom/motorola/camera/ui/compose/Dimensions;->dialogTextWeight:I

    invoke-direct {v9, v0}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    iget-wide v10, v3, Lcom/motorola/camera/ui/compose/Dimensions;->dialogLetterSpacing:J

    const-wide/16 v13, 0x0

    const v15, 0xffff78

    const/4 v12, 0x0

    move-object/from16 v4, v18

    invoke-direct/range {v4 .. v15}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;JIJI)V

    const/16 v21, 0x0

    const v22, 0xfffe

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object/from16 v19, v1

    invoke-static/range {v2 .. v22}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/ComposerImpl;III)V

    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_3

    :cond_3
    :goto_2
    iget-object v2, v0, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$StorageFull$2;->$modifier:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/Modifier;

    iget-object v0, v0, Lcom/motorola/camera/adobe_scan/ui/StorageFullIndicatorKt$StorageFull$2;->$onClick:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, La/l;->StorageFullPill(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

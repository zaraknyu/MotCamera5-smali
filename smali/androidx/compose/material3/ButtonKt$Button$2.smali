.class public final Landroidx/compose/material3/ButtonKt$Button$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic $contentColor:J

.field public final synthetic $contentPadding:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>(JLandroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/material3/ButtonKt$Button$2;->$r8$classId:I

    .line 1
    iput-wide p1, p0, Landroidx/compose/material3/ButtonKt$Button$2;->$contentColor:J

    iput-object p3, p0, Landroidx/compose/material3/ButtonKt$Button$2;->$contentPadding:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/compose/material3/ButtonKt$Button$2;->$content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public constructor <init>(JLandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    const/4 p5, 0x1

    iput p5, p0, Landroidx/compose/material3/ButtonKt$Button$2;->$r8$classId:I

    .line 2
    iput-wide p1, p0, Landroidx/compose/material3/ButtonKt$Button$2;->$contentColor:J

    iput-object p3, p0, Landroidx/compose/material3/ButtonKt$Button$2;->$contentPadding:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/compose/material3/ButtonKt$Button$2;->$content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Landroidx/compose/material3/ButtonKt$Button$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p1, p0, Landroidx/compose/material3/ButtonKt$Button$2;->$contentPadding:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Landroidx/compose/ui/text/TextStyle;

    const/16 p1, 0x181

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v6

    iget-wide v1, p0, Landroidx/compose/material3/ButtonKt$Button$2;->$contentColor:J

    iget-object v4, p0, Landroidx/compose/material3/ButtonKt$Button$2;->$content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgj;->ProvideContentColorTextStyle-3J-VO9M(JLandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit8 p1, p1, 0x3

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, p1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/material3/Typography;

    iget-object v2, p1, Landroidx/compose/material3/Typography;->labelLarge:Landroidx/compose/ui/text/TextStyle;

    new-instance p1, Landroidx/compose/material3/ButtonKt$Button$2$1;

    iget-object p2, p0, Landroidx/compose/material3/ButtonKt$Button$2;->$contentPadding:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    iget-object v0, p0, Landroidx/compose/material3/ButtonKt$Button$2;->$content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v1, 0x0

    invoke-direct {p1, v1, p2, v0}, Landroidx/compose/material3/ButtonKt$Button$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const p2, 0x4f204156

    invoke-static {p2, p1, v4}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v3

    const/16 v5, 0x180

    iget-wide v0, p0, Landroidx/compose/material3/ButtonKt$Button$2;->$contentColor:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgj;->ProvideContentColorTextStyle-3J-VO9M(JLandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

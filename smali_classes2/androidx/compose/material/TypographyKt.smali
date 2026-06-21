.class public abstract Landroidx/compose/material/TypographyKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DefaultTextStyle:Landroidx/compose/ui/text/TextStyle;

.field public static final LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v10, Landroidx/compose/ui/text/style/LineHeightStyle;

    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Center:F

    const/4 v1, 0x0

    invoke-direct {v10, v0, v1}, Landroidx/compose/ui/text/style/LineHeightStyle;-><init>(FI)V

    sget-object v0, Landroidx/compose/ui/text/TextStyle;->Default:Landroidx/compose/ui/text/TextStyle;

    sget-object v9, Landroidx/compose/material/DefaultPlatformTextStyle_androidKt;->DefaultPlatformTextStyle:Landroidx/compose/ui/text/PlatformTextStyle;

    const v11, 0xe7ffff

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-static/range {v0 .. v11}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/TypographyKt;->DefaultTextStyle:Landroidx/compose/ui/text/TextStyle;

    sget-object v0, Landroidx/compose/material/ColorsKt$LocalColors$1;->INSTANCE$6:Landroidx/compose/material/ColorsKt$LocalColors$1;

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/ProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Landroidx/compose/material/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    return-void
.end method

.method public static final access$withDefaultFontFamily(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/SystemFontFamily;)Landroidx/compose/ui/text/TextStyle;
    .locals 13

    iget-object v0, p0, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    iget-object v0, v0, Landroidx/compose/ui/text/SpanStyle;->fontFamily:Landroidx/compose/ui/text/font/SystemFontFamily;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v11, 0x0

    const v12, 0xffffdf

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-static/range {v1 .. v12}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    return-object p0
.end method

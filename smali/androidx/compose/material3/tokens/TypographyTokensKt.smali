.class public abstract Landroidx/compose/material3/tokens/TypographyTokensKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DefaultTextStyle:Landroidx/compose/ui/text/TextStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v10, Landroidx/compose/ui/text/style/LineHeightStyle;

    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Center:F

    const/4 v1, 0x0

    invoke-direct {v10, v0, v1}, Landroidx/compose/ui/text/style/LineHeightStyle;-><init>(FI)V

    sget-object v0, Landroidx/compose/ui/text/TextStyle;->Default:Landroidx/compose/ui/text/TextStyle;

    sget-object v9, Landroidx/compose/material3/internal/DefaultPlatformTextStyle_androidKt;->DefaultPlatformTextStyle:Landroidx/compose/ui/text/PlatformTextStyle;

    const v11, 0xe7ffff

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-static/range {v0 .. v11}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/SystemFontFamily;JJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/tokens/TypographyTokensKt;->DefaultTextStyle:Landroidx/compose/ui/text/TextStyle;

    return-void
.end method

.class public final Landroidx/media3/common/text/TextEmphasisSpan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/text/LanguageFeatureSpan;


# static fields
.field public static final FIELD_MARK_FILL:Ljava/lang/String;

.field public static final FIELD_MARK_SHAPE:Ljava/lang/String;

.field public static final FIELD_POSITION:Ljava/lang/String;


# instance fields
.field public final markFill:I

.field public final markShape:I

.field public final position:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/TextEmphasisSpan;->FIELD_MARK_SHAPE:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/TextEmphasisSpan;->FIELD_MARK_FILL:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/TextEmphasisSpan;->FIELD_POSITION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/common/text/TextEmphasisSpan;->markShape:I

    iput p2, p0, Landroidx/media3/common/text/TextEmphasisSpan;->markFill:I

    iput p3, p0, Landroidx/media3/common/text/TextEmphasisSpan;->position:I

    return-void
.end method

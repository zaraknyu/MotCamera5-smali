.class public abstract Landroidx/media3/common/text/CustomSpanBundler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FIELD_END_INDEX:Ljava/lang/String;

.field public static final FIELD_FLAGS:Ljava/lang/String;

.field public static final FIELD_PARAMS:Ljava/lang/String;

.field public static final FIELD_START_INDEX:Ljava/lang/String;

.field public static final FIELD_TYPE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/CustomSpanBundler;->FIELD_START_INDEX:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/CustomSpanBundler;->FIELD_END_INDEX:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/CustomSpanBundler;->FIELD_FLAGS:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/CustomSpanBundler;->FIELD_TYPE:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/CustomSpanBundler;->FIELD_PARAMS:Ljava/lang/String;

    return-void
.end method

.method public static spanToBundle(Landroid/text/Spanned;Ljava/lang/Object;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Landroidx/media3/common/text/CustomSpanBundler;->FIELD_START_INDEX:Ljava/lang/String;

    invoke-interface {p0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/text/CustomSpanBundler;->FIELD_END_INDEX:Ljava/lang/String;

    invoke-interface {p0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/text/CustomSpanBundler;->FIELD_FLAGS:Ljava/lang/String;

    invoke-interface {p0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object p0, Landroidx/media3/common/text/CustomSpanBundler;->FIELD_TYPE:Ljava/lang/String;

    invoke-virtual {v0, p0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-eqz p3, :cond_0

    sget-object p0, Landroidx/media3/common/text/CustomSpanBundler;->FIELD_PARAMS:Ljava/lang/String;

    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-object v0
.end method

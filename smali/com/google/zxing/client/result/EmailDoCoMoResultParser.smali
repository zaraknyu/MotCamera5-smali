.class public final Lcom/google/zxing/client/result/EmailDoCoMoResultParser;
.super Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;
.source "SourceFile"


# static fields
.field public static final ATEXT_ALPHANUMERIC:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[a-zA-Z0-9@.!#$%&\'*+\\-/=?^_`{|}~]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->ATEXT_ALPHANUMERIC:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public final parse(Lcom/google/zxing/Result;)Landroidx/media3/decoder/Buffer;
    .locals 9

    invoke-static {p1}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "MATMSG:"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "TO:"

    const/16 v1, 0x3b

    const/4 v2, 0x1

    invoke-static {p1, p0, v1, v2}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_0
    return-object v0

    :cond_1
    array-length p1, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, p1, :cond_3

    aget-object v5, v4, v3

    if-eqz v5, :cond_2

    sget-object v6, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->ATEXT_ALPHANUMERIC:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x40

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    const-string p1, "SUB:"

    invoke-static {p1, p0, v1, v2}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    move-object v7, v0

    goto :goto_2

    :cond_4
    aget-object p1, p1, v2

    move-object v7, p1

    :goto_2
    const-string p1, "BODY:"

    invoke-static {p1, p0, v1, v2}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    :goto_3
    move-object v8, v0

    goto :goto_4

    :cond_5
    aget-object v0, p0, v2

    goto :goto_3

    :goto_4
    new-instance v3, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

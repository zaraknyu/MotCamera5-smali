.class public final Lcom/google/zxing/client/result/CalendarParsedResult;
.super Landroidx/media3/decoder/Buffer;
.source "SourceFile"


# static fields
.field public static final DATE_TIME:Ljava/util/regex/Pattern;

.field public static final RFC2445_DURATION:Ljava/util/regex/Pattern;

.field public static final RFC2445_DURATION_FIELD_UNITS:[J


# instance fields
.field public final attendees:[Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final end:J

.field public final endAllDay:Z

.field public final latitude:D

.field public final location:Ljava/lang/String;

.field public final longitude:D

.field public final organizer:Ljava/lang/String;

.field public final start:J

.field public final startAllDay:Z

.field public final summary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "P(?:(\\d+)W)?(?:(\\d+)D)?(?:T(?:(\\d+)H)?(?:(\\d+)M)?(?:(\\d+)S)?)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/CalendarParsedResult;->RFC2445_DURATION:Ljava/util/regex/Pattern;

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/client/result/CalendarParsedResult;->RFC2445_DURATION_FIELD_UNITS:[J

    const-string v0, "[0-9]{8}(T[0-9]{6}Z?)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/CalendarParsedResult;->DATE_TIME:Ljava/util/regex/Pattern;

    return-void

    nop

    :array_0
    .array-data 8
        0x240c8400
        0x5265c00
        0x36ee80
        0xea60
        0x3e8
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    const/16 v2, 0x9

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3}, Landroidx/media3/decoder/Buffer;-><init>(II)V

    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/google/zxing/client/result/CalendarParsedResult;->summary:Ljava/lang/String;

    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/google/zxing/client/result/CalendarParsedResult;->parseDate(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/zxing/client/result/CalendarParsedResult;->start:J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p3, :cond_5

    const-wide/16 v4, -0x1

    if-nez v1, :cond_1

    :goto_0
    move-wide v7, v4

    :cond_0
    const-wide/16 v14, 0x0

    goto :goto_3

    :cond_1
    sget-object v6, Lcom/google/zxing/client/result/CalendarParsedResult;->RFC2445_DURATION:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    :goto_1
    sget-object v9, Lcom/google/zxing/client/result/CalendarParsedResult;->RFC2445_DURATION_FIELD_UNITS:[J

    array-length v10, v9

    if-ge v6, v10, :cond_0

    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    aget-wide v12, v9, v6

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-wide/16 v14, 0x0

    int-to-long v2, v6

    mul-long/2addr v12, v2

    add-long/2addr v7, v12

    goto :goto_2

    :cond_3
    const-wide/16 v14, 0x0

    :goto_2
    move v6, v10

    goto :goto_1

    :goto_3
    cmp-long v1, v7, v14

    if-gez v1, :cond_4

    goto :goto_4

    :cond_4
    iget-wide v1, v0, Lcom/google/zxing/client/result/CalendarParsedResult;->start:J

    add-long v4, v1, v7

    :goto_4
    iput-wide v4, v0, Lcom/google/zxing/client/result/CalendarParsedResult;->end:J

    goto :goto_5

    :cond_5
    :try_start_1
    invoke-static/range {p3 .. p3}, Lcom/google/zxing/client/result/CalendarParsedResult;->parseDate(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/zxing/client/result/CalendarParsedResult;->end:J
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_5
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne v1, v2, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    iput-boolean v1, v0, Lcom/google/zxing/client/result/CalendarParsedResult;->startAllDay:Z

    if-eqz p3, :cond_7

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_7

    move v2, v3

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    iput-boolean v2, v0, Lcom/google/zxing/client/result/CalendarParsedResult;->endAllDay:Z

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/google/zxing/client/result/CalendarParsedResult;->location:Ljava/lang/String;

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/google/zxing/client/result/CalendarParsedResult;->organizer:Ljava/lang/String;

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/google/zxing/client/result/CalendarParsedResult;->attendees:[Ljava/lang/String;

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/google/zxing/client/result/CalendarParsedResult;->description:Ljava/lang/String;

    move-wide/from16 v1, p9

    iput-wide v1, v0, Lcom/google/zxing/client/result/CalendarParsedResult;->latitude:D

    move-wide/from16 v1, p11

    iput-wide v1, v0, Lcom/google/zxing/client/result/CalendarParsedResult;->longitude:D

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parseDate(Ljava/lang/String;)J
    .locals 6

    sget-object v0, Lcom/google/zxing/client/result/CalendarParsedResult;->DATE_TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmss"

    const/16 v3, 0x10

    if-ne v0, v3, :cond_1

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    new-instance p0, Ljava/util/GregorianCalendar;

    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v1, v4

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v3, p0

    add-long/2addr v1, v3

    return-wide v1

    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0

    :cond_2
    new-instance v0, Ljava/text/ParseException;

    invoke-direct {v0, p0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method


# virtual methods
.method public final getDisplayResult()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->summary:Ljava/lang/String;

    invoke-static {v1, v0}, Landroidx/media3/decoder/Buffer;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->start:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-gez v5, :cond_0

    move-object v1, v6

    goto :goto_1

    :cond_0
    iget-boolean v5, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->startAllDay:Z

    if-eqz v5, :cond_1

    invoke-static {v7}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v5

    goto :goto_0

    :cond_1
    invoke-static {v7, v7}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v5

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1, v0}, Landroidx/media3/decoder/Buffer;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->end:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_2

    goto :goto_3

    :cond_2
    iget-boolean v3, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->endAllDay:Z

    if-eqz v3, :cond_3

    invoke-static {v7}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v3

    goto :goto_2

    :cond_3
    invoke-static {v7, v7}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v3

    :goto_2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-static {v6, v0}, Landroidx/media3/decoder/Buffer;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->location:Ljava/lang/String;

    invoke-static {v1, v0}, Landroidx/media3/decoder/Buffer;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->organizer:Ljava/lang/String;

    invoke-static {v1, v0}, Landroidx/media3/decoder/Buffer;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->attendees:[Ljava/lang/String;

    invoke-static {v1, v0}, Landroidx/media3/decoder/Buffer;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p0, p0, Lcom/google/zxing/client/result/CalendarParsedResult;->description:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/media3/decoder/Buffer;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

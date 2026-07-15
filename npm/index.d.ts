declare module '@apiverve/readabilityscore' {
  export interface readabilityscoreOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface readabilityscoreResponse {
    status: string;
    error: string | null;
    data: TextReadabilityScoreData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface TextReadabilityScoreData {
      textCounts:        TextCounts;
      readability:       Readability;
      readabilityText:   ReadabilityText;
      averageGradeLevel: number | null;
      targetAudience:    null | string;
  }
  
  interface Readability {
      fleschReadingEase:         number | null;
      fleschKincaidGrade:        number | null;
      gunningFog:                number | null;
      colemanLiauIndex:          number | null;
      smogIndex:                 number | null;
      automatedReadabilityIndex: number | null;
      daleChallReadabilityScore: number | null;
  }
  
  interface ReadabilityText {
      fleschReadingEase:         null | string;
      daleChallReadabilityScore: null | string;
  }
  
  interface TextCounts {
      syllableCount: number | null;
      lexiconCount:  number | null;
      sentenceCount: number | null;
  }

  export default class readabilityscoreWrapper {
    constructor(options: readabilityscoreOptions);

    execute(callback: (error: any, data: readabilityscoreResponse | null) => void): Promise<readabilityscoreResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: readabilityscoreResponse | null) => void): Promise<readabilityscoreResponse>;
    execute(query?: Record<string, any>): Promise<readabilityscoreResponse>;
  }
}
